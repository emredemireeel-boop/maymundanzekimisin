import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

import 'package:zihin_tuzaklari/config/app_theme.dart';
import 'package:zihin_tuzaklari/models/game_state.dart';
import 'package:zihin_tuzaklari/screens/splash_screen.dart';
import 'package:zihin_tuzaklari/services/ad_service.dart';
import 'package:zihin_tuzaklari/services/app_language.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppLanguage.instance.load();

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
  );
  // Gesture navigation bar için edge-to-edge modu etkinleştir
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

  runApp(const ZihinTuzaklariApp());

  // Gizlilik mesajlarının güvenli biçimde sunulabilmesi için ilk kareyi bekle.
  WidgetsBinding.instance.addPostFrameCallback((_) {
    AdService.instance.initialize();
  });
}

class ZihinTuzaklariApp extends StatelessWidget {
  const ZihinTuzaklariApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<GameState>(
          create: (_) => GameState()..loadStats(),
        ),
        ChangeNotifierProvider<AppLanguage>.value(value: AppLanguage.instance),
      ],
      child: Consumer<AppLanguage>(
        builder: (context, language, _) => MaterialApp(
          title: switch (language.code) {
            'en' => 'Smarter Than a Monkey?',
            'es' => '¿Más listo que un mono?',
            _ => 'Maymundan Zeki Misin?',
          },
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme,
          locale: language.locale,
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [Locale('tr'), Locale('en'), Locale('es')],
          home: const SplashScreen(),
        ),
      ),
    );
  }
}
