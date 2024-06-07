import 'package:flutter/material.dart';
import 'package:hospitall/Utils/resources/app_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: Column(
          children: [
            appBar(),
            Column(
              children: [
                AppText.appText("Schedule an appointment",
                    fontSize: 20, fontWeight: FontWeight.w600)
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget appBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 35,
            child: Image.asset(
              "assets/images/avae.png",
              fit: BoxFit.fill,
            ),
          ),
          Image.asset(
            "assets/images/notification.png",
            height: 24,
            fit: BoxFit.fill,
          )
        ],
      ),
    );
  }

  Widget catagoryContainer()
}
