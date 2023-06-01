import 'package:flutter/material.dart';
import 'package:flare_splash_screen/flare_splash_screen.dart';
import 'login/login_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen.navigate(
        name: 'assets/splash.flr', // path to .flr animation file
        next: (_) => const LoginPage(), // what to do after animation is completed
        until: () => Future.delayed(const Duration(seconds: 1)), // wait for seconds
        startAnimation: 'rotate_scale_color', // name the animation
    );
  }
}
