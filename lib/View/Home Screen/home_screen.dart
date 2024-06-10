import 'package:flutter/material.dart';
import 'package:hospitall/Utils/resources/app_text.dart';
import 'package:hospitall/Utils/resources/app_theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchController = TextEditingController();
  List img = [
    "assets/images/appoint.png",
    "assets/images/medicalCheck.png",
    "assets/images/bill.png",
    "assets/images/notifi.png",
  ];
  List txt = [
    "Appointment",
    "Check-up Status",
    "Billing Details",
    "Notifications",
  ];
  List txt1 = [
    "Denteeth",
    "Therapist",
    "Surgery",
    "Eyes Specialist",
  ];

  int selectedIndex = 0;
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
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 20),
                  child: AppText.appText("Schedule an appointment",
                      fontSize: 20, fontWeight: FontWeight.w600),
                ),
                searchField(),
                const SizedBox(
                  height: 20,
                ),
                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: [
                    for (int i = 0; i < img.length; i++)
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = i;
                          });
                        },
                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          child: Container(
                            height: 96,
                            width: screenWidth * 0.4,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: selectedIndex == i
                                  ? AppTheme.appColor
                                  : AppTheme.whiteColor,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset(
                                  "${img[i]}",
                                  color: selectedIndex == i
                                      ? AppTheme.whiteColor
                                      : AppTheme.appColor,
                                  height: 40,
                                ),
                                AppText.appText("${txt[i]}",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    textColor: selectedIndex == i
                                        ? AppTheme.whiteColor
                                        : AppTheme.appColor)
                              ],
                            ),
                          ),
                        ),
                      )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppText.appText("Categories",
                          fontSize: 24, fontWeight: FontWeight.w600),
                      AppText.appText("See All",
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          textColor: AppTheme.lightText1),
                    ],
                  ),
                ),
                SizedBox(
                  height: 80,
                  width: screenWidth,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: txt1.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          if (index == 0)
                          const SizedBox(width: 20,),
                          Padding(
                            padding: const EdgeInsets.only(right: 20.0),
                            child: Container(
                              height: 80,
                              width: 156,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: AppTheme.lightAppColor),
                              child: Center(
                                child: AppText.appText("${txt1[index]}",
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    textColor: AppTheme.whiteColor),
                              ),
                            ),
                          ),
                          
                        ],
                      );
                    },
                  ),
                )
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

  Widget searchField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 246, 245, 245),
            borderRadius: BorderRadius.circular(10)),
        child: TextField(
          controller: _searchController,
          cursorColor: AppTheme.appColor,
          cursorHeight: 25,
          textAlign: TextAlign.start,
          cursorWidth: 2,
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
              prefixIcon: Padding(
                padding: const EdgeInsets.only(top: 15.0, bottom: 8),
                child: Image.asset(
                  "assets/images/search.png",
                  height: 20,
                ),
              ),
              suffixIcon: Padding(
                padding: const EdgeInsets.only(top: 15.0, bottom: 8),
                child: Image.asset(
                  "assets/images/mic.png",
                  height: 15,
                ),
              ),
              border: InputBorder.none,
              contentPadding:
                  const EdgeInsets.only(left: 20, top: 16, bottom: 8, right: 8),
              hintText: "Search",
              hintStyle: const TextStyle(
                  color: Color(0xff858585),
                  fontSize: 18,
                  fontWeight: FontWeight.w400),
              isDense: false),
        ),
      ),
    );
  }
}
