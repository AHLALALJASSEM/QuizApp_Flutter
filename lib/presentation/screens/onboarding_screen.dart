import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:quizapp_flutter/core/constants/assets.dart';
import 'package:quizapp_flutter/routes.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Padding(
       padding: const EdgeInsets.only(top: 150),
       child: IntroductionScreen(
        pages: [
          PageViewModel(
            title: "welcome",
            body:"welcome",
            image: Image.asset(AppAssets.onBoarding_1),
          ),
          PageViewModel(
            title: "welcome",
            body:"welcome",
            image: Image.asset(AppAssets.onBoarding_2),
          ),
          PageViewModel(
            title: "welcome",
            body:"welcome",
            image: Image.asset(AppAssets.onBoarding_3),
          )
        ],
        onDone:() => Navigator.pushReplacementNamed(context,AppRoutes.loginScreen),
        showSkipButton: true,
        showBackButton: true,
        showNextButton: true,
        showDoneButton: true,
        done: Text("Done"),
        next: Text("Next"),
        skip: Text("Skip"),
        back: Text("Back"),
       ),
     ),
    );
  }
}