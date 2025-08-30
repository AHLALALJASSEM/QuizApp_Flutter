import 'package:flutter/material.dart';
import 'package:quizapp_flutter/presentation/screens/onboarding_screen.dart';
import 'package:quizapp_flutter/presentation/screens/splash_screen.dart';

class AppRoutes {
  static const String splashScreen = 'splashScreen';
  static const String onBoarding = 'onBoarding';

  static Map<String, WidgetBuilder> routes = {
    splashScreen : (context)=> SplashScreen(),
    onBoarding : (context)=> OnboardingScreen(),
  };
}
