import 'dart:async';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Ses yönetim servisi – tick sesleri, doğru/yanlış geri bildirimi
class SoundService {
  SoundService._();
  static final SoundService instance = SoundService._();

  bool _soundEnabled = true;
  Timer? _tickTimer;
  final AudioPlayer _monkeyPlayer = AudioPlayer();

  bool get soundEnabled => _soundEnabled;

  Future<void> init() async {
    final prefs = await SharedPreferences.getInstance();
    _soundEnabled = prefs.getBool('soundEnabled') ?? true;
  }

  Future<void> toggleSound(bool enabled) async {
    _soundEnabled = enabled;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('soundEnabled', enabled);
    if (!enabled) {
      stopTickSound();
      _monkeyPlayer.stop();
    }
  }

  /// Doğru cevap haptic + system sound
  void playCorrect() {
    if (!_soundEnabled) return;
    HapticFeedback.lightImpact();
    SystemSound.play(SystemSoundType.click);
  }

  /// Yanlış cevap haptic + maymun sesi
  void playWrong() {
    if (!_soundEnabled) return;
    HapticFeedback.heavyImpact();
    playMonkeySound();
  }

  /// Maymun sesi çal (yanlış cevap verildiğinde)
  Future<void> playMonkeySound() async {
    if (!_soundEnabled) return;
    try {
      await _monkeyPlayer.stop();
      await _monkeyPlayer.play(AssetSource('monkeysound.mp3'));
    } catch (_) {}
  }

  /// Zaman azaldıkça hızlanan tick sesi
  void startTickSound(int totalSeconds) {
    if (!_soundEnabled) return;
    stopTickSound();
    int elapsed = 0;

    _tickTimer = Timer.periodic(const Duration(milliseconds: 100), (timer) {
      elapsed++;
      final remaining = totalSeconds - (elapsed ~/ 10);

      // Son 10 saniyede hızlanan tick
      if (remaining <= 5) {
        if (elapsed % 3 == 0) {
          HapticFeedback.selectionClick();
        }
      } else if (remaining <= 10) {
        if (elapsed % 5 == 0) {
          HapticFeedback.selectionClick();
        }
      } else if (remaining <= 20) {
        if (elapsed % 10 == 0) {
          HapticFeedback.selectionClick();
        }
      }

      if (remaining <= 0) {
        stopTickSound();
        HapticFeedback.heavyImpact();
      }
    });
  }

  /// Tick sesini durdur
  void stopTickSound() {
    _tickTimer?.cancel();
    _tickTimer = null;
  }

  /// Buton tıklama sesi
  void playTap() {
    if (!_soundEnabled) return;
    HapticFeedback.selectionClick();
  }

  /// Seviye atlama
  void playLevelUp() {
    if (!_soundEnabled) return;
    HapticFeedback.mediumImpact();
    Future.delayed(const Duration(milliseconds: 100), () {
      HapticFeedback.lightImpact();
    });
    Future.delayed(const Duration(milliseconds: 200), () {
      HapticFeedback.lightImpact();
    });
  }

  void dispose() {
    stopTickSound();
  }
}
