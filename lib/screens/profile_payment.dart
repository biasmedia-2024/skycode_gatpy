import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fuel_app/screens/language.dart';
import 'package:fuel_app/screens/permission_screen.dart';
import 'package:fuel_app/screens/reminder_screen.dart';
import 'package:gap/gap.dart';

import 'aboutus_page.dart';

class profile_screeen extends StatefulWidget {
  const profile_screeen({super.key});

  @override
  State<profile_screeen> createState() => _profile_screeenState();
}

class _profile_screeenState extends State<profile_screeen> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Make it transparent to show the gradient
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF0f9b0f), // Start green
                Color(0xFF000000), // End green
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),         toolbarHeight: 100,
        title: Text(
          "Profile and Payment",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Color(0xffffffff)),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 27),
            child: Image.asset(
              "assets/help.png",
              height: 24.h,
              width: 24.w,
            ),
          )
        ],
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 14, right: 15, top: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding:
                    EdgeInsets.only(left: 18, top: 20, bottom: 19, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          child: Icon(Icons.star, color: Colors.white),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              color: Color(0xffC62E00)),
                          width: 51.w,
                          height: 48.h,
                        ),
                        Gap(22.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "*****1234",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                            Gap(7.h),
                            Text(
                              "+91 9346920056",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 12,
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.r),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromARGB(255, 132, 132, 132),
                        blurRadius: 4,
                        spreadRadius: 0,
                        offset: Offset(0, 1))
                  ],
                ),
                height: 87.h,
                width: MediaQuery.of(context).size.width,
              ),
              Gap(15.h),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 18, top: 20, right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Receive Money",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                          Gap(5.h),
                          Row(
                            children: [
                              Image.asset(
                                "assets/qr.png",
                                width: 14.w,
                                height: 14.h,
                              ),
                              Gap(8.w),
                              Text(
                                "UPI ID: 1234567890@axl",
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              )
                            ],
                          )
                        ],
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 12,
                      )
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.r),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromARGB(255, 132, 132, 132),
                        blurRadius: 4,
                        spreadRadius: 0,
                        offset: Offset(0, 1))
                  ],
                ),
                height: 71.h,
                width: MediaQuery.of(context).size.width,
              ),
              Gap(15.h),

              Gap(15.h),

              Gap(15.h),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 21,
                    top: 26,
                    // right: 30,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Settings & Preferences",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      Gap(20.h),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => LanguageScreen(),
                          ));
                        },
                        child: Settings(
                            photo: Image.asset(
                              "assets/translator.png",
                              width: 25.w,
                              height: 25.h,
                            ),
                            text1: "Languages",
                            text2: "Chosen Language",
                            icon1: Icon(Icons.arrow_forward_ios, size: 13)),
                      ),
                      Gap(5.h),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Divider(
                          color: Colors.grey,
                        ),
                      ),
                      Gap(5.h),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => PermissionScreen()),
                          );
                        },
                        child: Settings(
                          photo: Image.asset(
                            "assets/permission.png",
                            width: 25.w,
                            height: 25.h,
                          ),
                          text1: "Permissions",
                          text2: "Manage data sharing settings",
                          icon1: Icon(Icons.arrow_forward_ios, size: 13),
                        ),
                      ),

                      Gap(5.h),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Divider(
                          color: Colors.grey,
                        ),
                      ),
                      Gap(5.h),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ReminderScreen()),
                          );
                        },
                        child: Settings(
                          photo: Image.asset(
                            "assets/reminder.png",
                            width: 25.w,
                            height: 25.h,
                          ),
                          text1: "Reminders",
                          text2: "Never miss another bill payment",
                          icon1: Icon(Icons.arrow_forward_ios, size: 13),
                        ),
                      ),

                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.r),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromARGB(255, 132, 132, 132),
                        blurRadius: 4,
                        spreadRadius: 0,
                        offset: Offset(0, 1))
                  ],
                ),
                height: 248.h,
                width: MediaQuery.of(context).size.width,
              ),
              Gap(15.h),
              Container(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      right: 10,
                      top: 26,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Security",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        Gap(10.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              "assets/fingerprint.png",
                              width: 14.w,
                              height: 14.h,
                            ),
                            Gap(0.w),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Screen Lock",
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black),
                                        ),
                                        Gap(5.h),
                                        Text(
                                          "Biometric & Screen locks",
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xffCCCACA)),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Gap(140.w),
                            Transform.scale(
                              scale:
                                  0.5, // Adjust this value to change the size
                              child: Switch(
                                value: isSwitched,
                                onChanged: (value) {
                                  setState(() {
                                    isSwitched = value;
                                  });
                                },
                                activeColor: Colors.green,
                                inactiveThumbColor: Colors.grey,
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Divider(
                            color: Colors.grey,
                          ),
                        ),
                        Settings(
                            photo: Image.asset(
                              "assets/key.png",
                              width: 25.w,
                              height: 25.h,
                            ),
                            text1: "Set Up Password",
                            text2: "Secure your account with a password",
                            icon1: Icon(
                              Icons.arrow_forward_ios,
                              size: 13,
                            )),
                        Gap(5.h),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 30,
                          ),
                          child: Divider(
                            color: Colors.grey,
                          ),
                        ),
                        Gap(15.h),
                        Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/block.png",
                                    width: 20.w,
                                    height: 20.h,
                                  ),
                                  Gap(20.w),
                                  Text(
                                    "Blocked Contacts",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 12,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.r),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromARGB(255, 132, 132, 132),
                          blurRadius: 4,
                          spreadRadius: 0,
                          offset: Offset(0, 1))
                    ],
                  ),
                  height: 238.h,
                  width: MediaQuery.of(context).size.width),
              Gap(15),
              Container(
                padding:
                    EdgeInsets.only(left: 25, top: 25, bottom: 15, right: 29),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.r),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 132, 132, 132),
                      blurRadius: 4,
                      spreadRadius: 0,
                      offset: Offset(0, 1),
                    )
                  ],
                ),
                height: 83.h,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween, // Aligns icon to the end
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "assets/phone.png",
                          width: 18.w,
                          height: 19.h,
                        ),
                        Gap(20.w),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (_) => AboutUsPage()),
                            );
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "About us",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                              Gap(5.h),
                              Text(
                                "Privacy policy, Terms & About us",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffCCCACA),
                                ),
                              ),
                            ],
                          ),
                        )

                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 12,
                    ),
                  ],
                ),
              ),
              Gap(100.h)
            ],
          ),
        ),
      ),
    );
  }
}

class Settings extends StatelessWidget {
  const Settings({
    super.key,
    required this.text1,
    required this.text2,
    required this.photo,
    required this.icon1,
  });
  final String text1;
  final String text2;
  final Image photo;
  final Icon icon1;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            photo,
            Gap(18.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          text1,
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        Gap(5.h),
                        Text(
                          text2,
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffCCCACA)),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
        // Gap(177.w),
        Padding(
          padding: const EdgeInsets.only(right: 30),
          child: icon1,
        ),
      ],
    );
  }
}

class payment extends StatelessWidget {
  const payment({
    super.key,
    required this.text,
    required this.photo,
  });
  final String text;
  final Image photo;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        photo,
        Gap(6.h),
        Text(
          text,
          style: TextStyle(
              fontSize: 10, fontWeight: FontWeight.w400, color: Colors.black),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
