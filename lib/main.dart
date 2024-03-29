import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/services.dart';
import 'package:genmote/constants.dart';
import 'package:genmote/generated/assets.dart';
import 'package:genmote/methods.dart';
import 'package:genmote/network_status.dart';
import 'package:genmote/on-boarding/onboarding.dart';
import 'package:genmote/on-boarding/welcome.dart';
import 'package:genmote/services/service_provider.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ServiceProvider(
      methods: Methods(),
      child: MaterialApp(
        title: 'GenMote',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: _splash(),
      ),
    );
  }
}

Widget _splash() {
  return AnimatedSplashScreen(
      duration: 1000,
      splash: Assets.assetsGentroLogo2,
      nextScreen: const SelectLanguage(),
      splashTransition: SplashTransition.fadeTransition,
      backgroundColor: Constant.accentColor,
  );
}
