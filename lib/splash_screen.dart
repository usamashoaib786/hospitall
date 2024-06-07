import 'package:flutter/material.dart';
import 'package:hospitall/Utils/utils.dart';
import 'package:hospitall/View/Authentication/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 2), () {
      pushReplacement(context, const SignInScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Image.asset(
            "assets/images/Logo.png",
            height: 200,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
