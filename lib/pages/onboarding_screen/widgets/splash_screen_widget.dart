import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FadeIn(
          duration: const Duration(seconds: 2),
          child: Image.asset(
            "assets/images/logo.png",
            width: 100,
            fit: BoxFit.cover,
          ),
        ),
        // const SizedBox(height: 20),
        // const Text(
        //   "Expnanz",
        //   style: TextStyle(
        //     fontWeight: FontWeight.w900,
        //     fontSize: 40,
        //     color: kMainColor,
        //   ),
        // )
      ],
    );
  }
}
