import 'package:flutter/material.dart';
import 'package:sample_codes/pages/onboarding_screen/widgets/onboarding_widget.dart';
import 'package:sample_codes/pages/onboarding_screen/widgets/splash_screen_widget.dart';

import '../../data/onboading_data.dart';
import '../../models/onboading_model.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final List<OnboardingScreenModel> onboardingData =
      OnbardingData.onboardingData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                PageView(
                  children: [
                    const SplashScreen(),
                    OBWidget(
                      dataModel: onboardingData[0],
                    ),
                    OBWidget(
                      dataModel: onboardingData[1],
                    ),
                    OBWidget(
                      dataModel: onboardingData[2],
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
