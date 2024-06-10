import 'package:flutter/material.dart';
import 'package:hospitall/Utils/resources/app_button.dart';
import 'package:hospitall/Utils/resources/app_field.dart';
import 'package:hospitall/Utils/resources/app_text.dart';
import 'package:hospitall/Utils/resources/app_theme.dart';
import 'package:hospitall/Utils/utils.dart';
import 'package:hospitall/View/OnBoardScreen/on_board_screen.dart';
import 'package:hospitall/View/bottomNavBar/bottom_bar.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.appColor,
      body: Padding(
        padding: const EdgeInsets.only(top: 80.0),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(150), topRight: Radius.circular(5)),
              color: AppTheme.whiteColor),
          child: Padding(
            padding: const EdgeInsets.only(
                left: 40.0, top: 10, right: 40, bottom: 30),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Image.asset(
                    "assets/images/loginDoc.png",
                    fit: BoxFit.fill,
                    height: 190,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  CustomAppFormField(
                      texthint: "Email", controller: _emailController),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomAppPasswordfield(
                      texthint: "Password", controller: _passController),
                  const SizedBox(
                    height: 30,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: AppText.appText("Forgot your password?",
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        textColor: AppTheme.appColor),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  AppButton.appButton("Login", onTap: () {
                    push(context, const OnBoardScreen());
                  },
                      height: 60,
                      textColor: AppTheme.whiteColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      radius: 10.0)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
