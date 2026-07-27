import 'package:flutter/material.dart';

/// Zihin Tuzakları Renk Sistemi – Parlak, Enerjik Light Tema
class AppColors {
  AppColors._();

  // ── Ana Renkler ──────────────────────────────────────────────────────
  /// Derin İndigo – Ana butonlar, vurgular, aktif durumlar
  static const Color primary = Color(0xFF5C6BC0);

  /// Koyu İndigo
  static const Color primaryDark = Color(0xFF3949AB);

  /// Açık İndigo
  static const Color primaryLight = Color(0xFF9FA8DA);

  /// Turuncu Aksan – Doğru cevap, XP, başarı
  static const Color accent = Color(0xFFFF7043);

  /// Amber – Yıldızlar, özel ödüller
  static const Color amber = Color(0xFFFFB300);

  /// Yeşil – Doğru cevap
  static const Color correct = Color(0xFF43A047);
  static const Color correctLight = Color(0xFFE8F5E9);

  /// Kırmızı – Yanlış cevap
  static const Color wrong = Color(0xFFE53935);
  static const Color wrongLight = Color(0xFFFFEBEE);

  // ── Arka Plan & Yüzey ──────────────────────────────────────────────
  static const Color background = Color(0xFFF5F7FF);
  static const Color surface = Color(0xFFFFFFFF);
  static const Color surfaceVariant = Color(0xFFF0F2FA);

  // ── Metin Renkleri ─────────────────────────────────────────────────
  static const Color textPrimary = Color(0xFF1A1C2E);
  static const Color textSecondary = Color(0xFF5A5D7A);
  static const Color textHint = Color(0xFF9598B1);

  // ── Ayırıcı & Kenarlık ─────────────────────────────────────────────
  static const Color divider = Color(0xFFE8EAF6);
  static const Color border = Color(0xFFD1D5EB);

  // ── Kategori Renkleri ──────────────────────────────────────────────
  static const Color categoryLogic = Color(0xFF7E57C2); // Mor
  static const Color categoryMath = Color(0xFF42A5F5); // Mavi
  static const Color categoryPattern = Color(0xFF26A69A); // Teal
  static const Color categoryVerbal = Color(0xFFEF5350); // Kırmızı
  static const Color categoryStrategy = Color(0xFFFF7043); // Turuncu
  static const Color categoryVisual = Color(0xFFAB47BC); // Pembe-Mor

  // ── Gradient Tanımları ─────────────────────────────────────────────
  static const LinearGradient primaryGradient = LinearGradient(
    colors: [Color(0xFF5C6BC0), Color(0xFF7C4DFF)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient accentGradient = LinearGradient(
    colors: [Color(0xFFFF7043), Color(0xFFFFAB40)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient successGradient = LinearGradient(
    colors: [Color(0xFF43A047), Color(0xFF66BB6A)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient splashGradient = LinearGradient(
    colors: [Color(0xFF5C6BC0), Color(0xFF7C4DFF), Color(0xFF9575CD)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  // ── Hero & Glassmorphism ────────────────────────────────────────────
  static const LinearGradient heroGradient = LinearGradient(
    colors: [Color(0xFFEEF1FF), Color(0xFFF5F0FF), Color(0xFFFFF5F0)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const Color glassBackground = Color(0xCCFFFFFF); // 80% white
  static const Color glassBorder = Color(0x33FFFFFF); // 20% white
  static const Color glowOrange = Color(0xFFFF6B35);
  static const Color glowIndigo = Color(0xFF6366F1);

  static const LinearGradient playButtonGradient = LinearGradient(
    colors: [Color(0xFFFF6B35), Color(0xFFFF8F5E), Color(0xFFFFAB40)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient resumeButtonGradient = LinearGradient(
    colors: [Color(0xFF6366F1), Color(0xFF818CF8), Color(0xFF7C4DFF)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  // ── Utility ────────────────────────────────────────────────────────
  static LinearGradient cardGradient(Color color) {
    return LinearGradient(
      colors: [color.withValues(alpha: 0.10), color.withValues(alpha: 0.03)],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    );
  }
}
