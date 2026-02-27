import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

import 'package:zihin_tuzaklari/config/app_theme.dart';
import 'package:zihin_tuzaklari/models/game_state.dart';
import 'package:zihin_tuzaklari/screens/splash_screen.dart';
import 'package:zihin_tuzaklari/services/ad_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );

  // Reklamlari baslat
  AdService.instance.initialize();

  runApp(const ZihinTuzaklariApp());
}

class ZihinTuzaklariApp extends StatelessWidget {
  const ZihinTuzaklariApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<GameState>(
      create: (_) => GameState()..loadStats(),
      child: MaterialApp(
        title: 'Maymundan Zeki Misin?',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('tr', 'TR'),
        ],
        home: const SplashScreen(),
      ),
    );
  }
}
