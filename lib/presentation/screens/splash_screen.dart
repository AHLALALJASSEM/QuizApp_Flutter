import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:quizapp_flutter/core/constants/assets.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 212, 213, 211),
      body: Center(
        child: Image.asset(AppAssets.logo)
            .animate(onPlay: (controller) => controller.repeat())
            .fadeIn(duration: 5000.ms)
            .scale(
              duration: 5000.ms,
              begin: Offset(0.8, 0.8),
              end: Offset(1.0, 1.0),
            ).then().rotate(duration: 800.ms),
      ),
    );
  }
}
