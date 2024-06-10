import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hospitall/Utils/resources/app_button.dart';
import 'package:hospitall/Utils/resources/app_text.dart';
import 'package:hospitall/Utils/resources/app_theme.dart';
import 'package:hospitall/Utils/utils.dart';
import 'package:hospitall/View/bottomNavBar/bottom_bar.dart';

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({super.key});

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: AppTheme.lightAppColor,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.6,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    "assets/images/onBoard.png",
                    fit: BoxFit.fill,
                  )),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.57,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: AppTheme.whiteColor,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(70),
                        topRight: Radius.circular(70))),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 70.0, left: 30, right: 30, bottom: 20),
                  child: Column(
                    children: [
                      Container(
                        child: AppText.appText("One-Stop Healthcare Solution",
                            fontSize: 34,
                            fontWeight: FontWeight.w600,
                            textAlign: TextAlign.center),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, bottom: 70),
                        child: Container(
                          child: AppText.appText(
                              "Welcome to our healthcare app! Experience seamless appointment scheduling, real-time health tracking, and personalized care at your fingertips",
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              textAlign: TextAlign.center),
                        ),
                      ),
                      AppButton.appButton("Get Started",
                      onTap: () {
                        pushReplacement(context, const BottomNavView());
                      },
                          height: 60,
                          textColor: AppTheme.whiteColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w600)
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
