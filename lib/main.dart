import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:lg_gesture_and_voice_control/pages/about.dart';
import 'package:lg_gesture_and_voice_control/pages/help.dart';
import 'package:lg_gesture_and_voice_control/pages/settings.dart';
import 'package:lg_gesture_and_voice_control/pages/utilities.dart';
import 'package:lg_gesture_and_voice_control/pages/voicepage.dart';

import 'pages/mainpage.dart';
import 'pages/splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var delegate = await LocalizationDelegate.create(
      basePath: 'assets/i18n/',
      fallbackLocale: 'en_US',
      supportedLocales: ['en_US']);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft])
      .then((_) {
    runApp(ProviderScope(child: LocalizedApp(delegate, const Routes())));
  });
}

class Routes extends StatefulWidget {
  const Routes({Key? key}) : super(key: key);

  @override
  State<Routes> createState() => _RoutesState();
}

class _RoutesState extends State<Routes> {
  @override
  Widget build(BuildContext context) {
    var localizationDelegate = LocalizedApp.of(context).delegate;

    return LocalizationProvider(
      state: LocalizationProvider.of(context).state,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Liquid Galaxy Gesture & Voice Control',
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          localizationDelegate
        ],
        supportedLocales: localizationDelegate.supportedLocales,
        locale: localizationDelegate.currentLocale,
        initialRoute: '/',
        routes: {
          '/': (context) => const SplashPage(),
          '/HomePage': (context) => const MainPage(),
          '/settings': (context) => const SettingsPage(),
          '/help' :(context) => const HelpPage(),
          '/voice' : (context) => SpeechScreen(),
          '/about' : (context) => AboutPage(),
          '/utilities' : (context) => UtilPage(),
        },
      ),
    );
  }
}