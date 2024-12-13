import 'dart:async';
import 'package:flutter/material.dart';
import 'package:instaclone/Widgets/uihelper.dart';
// import 'package:instaclone/screens/login/login.dart';
import 'package:instaclone/screens/signup/signupscreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<StatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      // Replace MaterialPageRoute with PageRouteBuilder for fade transition
      Navigator.pushReplacement(context, _createFadeRoute());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UIHelper.CustomImage(imgURL: "image.png"),
            const SizedBox(height: 10),
            UIHelper.CustomImage(imgURL: "InstagramLogo.png"),
          ],
        ),
      ),
    );
  }

  // Create a route with a fade transition
  Route _createFadeRoute() {
    return PageRouteBuilder(
      transitionDuration: const Duration(seconds: 1), // Set the transition duration to 1 second
      pageBuilder: (context, animation, secondaryAnimation) => Signup(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        // Define the fade transition
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
    );
  }
}
