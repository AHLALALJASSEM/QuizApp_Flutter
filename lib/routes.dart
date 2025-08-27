import 'package:flutter/material.dart';
import 'package:quizapp_flutter/presentation/screens/splash_screen.dart';

class AppRoutes {
  static const String splashScrren = 'splashScrren';

  static Map<String, WidgetBuilder> routes = {
    splashScrren : (context)=> SplashScreen(),
  };
}
