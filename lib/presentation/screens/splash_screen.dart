import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:quizapp_flutter/core/constants/assets.dart';
import 'package:quizapp_flutter/core/constants/colors.dart';
import 'package:quizapp_flutter/routes.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(milliseconds: 5500), () {
      Navigator.pushReplacementNamed(context, AppRoutes.onBoarding);
    });
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Center(
        child: Image.asset(AppAssets.logo)
            .animate(onPlay: (controller) => controller.repeat())
            .fadeIn(duration: 4000.ms)
            .scale(
              duration: 4000.ms,
              begin: Offset(0.8, 0.8),
              end: Offset(1.0, 1.0),
            )
            .then()
            .rotate(duration: 800.ms),
      ),
    );
  }
}
