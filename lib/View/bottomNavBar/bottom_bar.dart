import 'package:flutter/material.dart';
import 'package:hospitall/Utils/resources/app_theme.dart';
import 'package:hospitall/View/Appointment%20Screen/apoint_screen.dart';
import 'package:hospitall/View/Chat%20Screen/chat_screen.dart';
import 'package:hospitall/View/Home%20Screen/home_screen.dart';
import 'package:hospitall/View/Profile%20Screen/profile_screen.dart';

class BottomNavView extends StatefulWidget {
  const BottomNavView({super.key});

  @override
  State<BottomNavView> createState() => _BottomNavViewState();
}

class _BottomNavViewState extends State<BottomNavView> {
  int _selectedIndex = 1;

  List screen = [
    const HomeScreen(),
    const AppointmentScreen(),
    const ChatScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screen[_selectedIndex],
        bottomNavigationBar: SizedBox(
          height: 80,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedIndex = 0;
                    });
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: _selectedIndex == 0
                            ? AppTheme.appColor
                            : AppTheme.whiteColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Image.asset(
                        "assets/images/home.png",
                        color: _selectedIndex == 0
                            ? AppTheme.whiteColor
                            : AppTheme.blackColor,
                        height: 24,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedIndex = 1;
                    });
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: _selectedIndex == 1
                            ? AppTheme.appColor
                            : AppTheme.whiteColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Image.asset(
                        "assets/images/clock.png",
                        color: _selectedIndex == 1
                            ? AppTheme.whiteColor
                            : AppTheme.blackColor,
                        height: 24,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedIndex = 2;
                    });
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: _selectedIndex == 2
                            ? AppTheme.appColor
                            : AppTheme.whiteColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Image.asset(
                        "assets/images/chat.png",
                        height: 24,
                        color: _selectedIndex == 2
                            ? AppTheme.whiteColor
                            : AppTheme.blackColor,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedIndex = 3;
                    });
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: _selectedIndex == 3
                            ? AppTheme.appColor
                            : AppTheme.whiteColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Image.asset(
                        "assets/images/profile.png",
                        height: 24,
                        color: _selectedIndex == 3
                            ? AppTheme.whiteColor
                            : AppTheme.blackColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
