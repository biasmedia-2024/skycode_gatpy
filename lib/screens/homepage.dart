import 'dart:async';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fuel_app/screens/Check_balance.dart';
import 'package:fuel_app/screens/profile_payment.dart';
import 'package:fuel_app/screens/recharge_bill_page.dart';
import 'package:fuel_app/screens/travel_stay_page.dart';
import 'package:fuel_app/screens/vehicle_list_screen.dart';
import 'package:fuel_app/screens/wallet_page.dart';
import 'package:gap/gap.dart';

import 'commute_page.dart';
import 'gold_wallet_page.dart';
import 'help_and_center_page.dart';
import 'insurance_page.dart';
import 'loans_page.dart';
import 'member_page.dart';
import 'mutual_fund_page.dart';
import 'qr_page.dart';
// Assuming this is inside your _HomePageState's build method
import 'package:flutter/material.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController(viewportFraction: 0.9);
  int _currentPage = 0;

  @override
  void initState(){
    super.initState();
// Start the timer for automatic sliding
    Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (_currentPage < 4) { // Adjust based on number of images - 1 (2 images = index 0 and 1)
        _currentPage++;
      } else {
        _currentPage = 0; // Loop back to the first image
      }
      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 300), // Smooth transition
        curve: Curves.easeIn,
      );
    });

  }

  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose(); // Clean up the controller
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        toolbarHeight: 80.h,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF0f9b0f), Color(0xFF000000)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        backgroundColor: Colors.transparent, // Makes the background transparent to see the gradient
        elevation: 0, // Optional: removes shadow for a cleaner look
        leading: Padding(
          padding: EdgeInsets.only(left: 24.w, bottom: 27.h, top: 25.h),
          child: SizedBox(
            height: 36.h,
            width: 38.w,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => profile_screeen(),
                    ));
              },
              child: Container(
                child: Center(
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Image.asset(
                        "assets/person.png",
                        width: 16.w,
                        height: 16.h,
                      ),
                      Positioned(
                          bottom: -15,
                          right: -20,
                          child: Image.asset(
                            "assets/flag.png",
                            width: 19.w,
                            height: 18.h,
                          ))
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7.r),
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Add Address",
                  style: TextStyle(color: Color(0xFFffffff), fontSize: 20),
                ),
                Gap(12.w),
                Icon(
                  Icons.arrow_drop_down,
                  color: Colors.white,
                )
              ],
            ),
            Text(
              "Jayanagar",
              style: TextStyle(color: Color(0xff99856b), fontSize: 20),
            ),
          ],
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Image.asset(
              "assets/notification.png",
              width: 20.w,
              height: 20.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0.w),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HelpAndCenterPage()),
                );
              },
              child: Image.asset(
                "assets/help.png",
                width: 20.w,
                height: 20.h,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 13, top: 40, right: 14, bottom: 40),


// No need for carousel_slider import

// Assuming this is inside your _HomePageState's build method
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 180.h,
                child: PageView(
                  controller: _pageController,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.w), // Adds gap on left and right
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15.r),
                          child: Image.asset(
                            "assets/offer.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.w),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15.r),
                          child: Image.asset(
                            "assets/goldoffer.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.w),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15.r),
                          child: Image.asset(
                            "assets/diseloffer.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.w),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15.r),
                          child: Image.asset(
                            "assets/offer.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
          Gap(10.h),
          Container(
            height: 156.h,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.r),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFF0f9b0f), // Solid green
                  blurRadius: 4,
                  spreadRadius: 0,
                  offset: Offset(0, 1),
                ),

              ],
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 31, top: 20, right: 39),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Transfer Money",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff000000)),
                  ),
                  Gap(15.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => VehicleListScreen()),
                          );
                        },
                        child: Transfer_money(
                          photo: Image.asset("assets/member.png"),
                          text: "Member",
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => WalletPage()),
                          );
                        },
                        child: Transfer_money(
                          photo: Image.asset("assets/wallet.png"),
                          text: "Wallet",
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => GoldWalletPage()),
                          // );
                        },
                        child: Transfer_money(
                          photo: Image.asset("assets/goldbars.png"),
                          text: "Gold",
                        ),
                      ),


                    ],
                  ),

                ],
              ),
            ),


            //
          ),



          //
          Gap(10.h),
              Container(
                height: 170.h,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.r),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF0f9b0f), // Solid green
                      blurRadius: 4,
                      spreadRadius: 0,
                      offset: Offset(0, 1),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 31, top: 20, right: 31),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Recharge & Services",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff000000),
                        ),
                      ),
                      Gap(15.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                                  backgroundColor: Colors.white,
                                  title: Row(
                                    children: [
                                      Icon(Icons.hourglass_top_rounded, color: Colors.orange),
                                      SizedBox(width: 8),
                                      Text("Coming Soon", style: TextStyle(fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                  content: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Image.asset("assets/mobile.png", height: 100),
                                      SizedBox(height: 10),
                                      Text(
                                        "We're working hard to bring you the Mobile Recharge feature.\nStay tuned for exciting rewards!",
                                        style: TextStyle(fontSize: 14, color: Colors.black87),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                  actions: [
                                    TextButton(
                                      child: Text("OK", style: TextStyle(color: Colors.green)),
                                      onPressed: () => Navigator.of(context).pop(),
                                    ),
                                  ],
                                ),
                              );
                            },

                            child: Transfer_money(
                              photo: Image.asset("assets/mobile.png"),
                              text: "Mobile",
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                                  backgroundColor: Colors.white,
                                  title: Row(
                                    children: [
                                      Icon(Icons.hourglass_top_rounded, color: Colors.orange),
                                      SizedBox(width: 8),
                                      Text("Coming Soon", style: TextStyle(fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                  content: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Image.asset("assets/dth.png", height: 100),
                                      SizedBox(height: 10),
                                      Text(
                                        "We're working hard to bring you the DTH Recharge feature.\nStay tuned for exciting rewards!",
                                        style: TextStyle(fontSize: 14, color: Colors.black87),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                  actions: [
                                    TextButton(
                                      child: Text("OK", style: TextStyle(color: Colors.green)),
                                      onPressed: () => Navigator.of(context).pop(),
                                    ),
                                  ],
                                ),
                              );
                            },

                          child: Transfer_money(
                            photo: Image.asset("assets/dth.png"),
                            text: "DTH",
                          ),
                          ),
                          GestureDetector(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                                  backgroundColor: Colors.white,
                                  title: Row(
                                    children: [
                                      Icon(Icons.hourglass_top_rounded, color: Colors.orange),
                                      SizedBox(width: 8),
                                      Text("Coming Soon", style: TextStyle(fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                  content: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Image.asset("assets/electricity.png", height: 100),
                                      SizedBox(height: 10),
                                      Text(
                                        "We're working hard to bring you the Electricity Recharge feature.\nStay tuned for exciting rewards!",
                                        style: TextStyle(fontSize: 14, color: Colors.black87),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                  actions: [
                                    TextButton(
                                      child: Text("OK", style: TextStyle(color: Colors.green)),
                                      onPressed: () => Navigator.of(context).pop(),
                                    ),
                                  ],
                                ),
                              );
                            },
                          child: Transfer_money(
                            photo: Image.asset("assets/electricity.png"),
                            text: "Electricity",
                          ),
                          ),
                          GestureDetector(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                                  backgroundColor: Colors.white,
                                  title: Row(
                                    children: [
                                      Icon(Icons.hourglass_top_rounded, color: Colors.orange),
                                      SizedBox(width: 8),
                                      Text("Coming Soon", style: TextStyle(fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                  content: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Image.asset("assets/gas.png", height: 100),
                                      SizedBox(height: 10),
                                      Text(
                                        "We're working hard to bring you the GAs Recharge feature.\nStay tuned for exciting rewards!",
                                        style: TextStyle(fontSize: 14, color: Colors.black87),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                  actions: [
                                    TextButton(
                                      child: Text("OK", style: TextStyle(color: Colors.green)),
                                      onPressed: () => Navigator.of(context).pop(),
                                    ),
                                  ],
                                ),
                              );
                            },
                          child: Transfer_money(
                            photo: Image.asset("assets/gas.png"),
                            text: "Gas",
                          ),),
                        ],
                      ),
                      // Gap(25.h),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //   children: [
                      //     Transfer_money(
                      //       photo: Image.asset("assets/gas.png"),
                      //       text: "Gas",
                      //     ),
                      //
                      //
                      //
                      //   ],
                      // ),
                    ],
                  ),
                ),
              ),

              //Insurance
              Gap(10.h),
              Container(
                height: 150.h,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.r),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF0f9b0f), // Solid green
                      blurRadius: 4,
                      spreadRadius: 0,
                      offset: Offset(0, 1),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 31, top: 20, right: 31),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Insurance",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff000000),
                        ),
                      ),
                      Gap(15.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                                  backgroundColor: Colors.white,
                                  title: Row(
                                    children: [
                                      Icon(Icons.hourglass_top_rounded, color: Colors.orange),
                                      SizedBox(width: 8),
                                      Text("Coming Soon", style: TextStyle(fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                  content: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Image.asset("assets/gatepysavings.png", height: 100),
                                      SizedBox(height: 10),
                                      Text(
                                        "We're working hard to bring you the GatePy Savings feature.\nStay tuned for exciting rewards!",
                                        style: TextStyle(fontSize: 14, color: Colors.black87),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                  actions: [
                                    TextButton(
                                      child: Text("OK", style: TextStyle(color: Colors.green)),
                                      onPressed: () => Navigator.of(context).pop(),
                                    ),
                                  ],
                                ),
                              );
                            },
                            child: Transfer_money(
                              photo: Image.asset("assets/gatepayinsu.png"),
                              text: "Gatepay Insurance",
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                                  backgroundColor: Colors.white,
                                  title: Row(
                                    children: [
                                      Icon(Icons.hourglass_top_rounded, color: Colors.orange),
                                      SizedBox(width: 8),
                                      Text("Coming Soon", style: TextStyle(fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                  content: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Image.asset("assets/gatepytravel.png", height: 100),
                                      SizedBox(height: 10),
                                      Text(
                                        "We're working hard to bring you the Travel Insurance feature.\nStay tuned for exciting rewards!",
                                        style: TextStyle(fontSize: 14, color: Colors.black87),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                  actions: [
                                    TextButton(
                                      child: Text("OK", style: TextStyle(color: Colors.green)),
                                      onPressed: () => Navigator.of(context).pop(),
                                    ),
                                  ],
                                ),
                              );
                            },

                          child: Transfer_money(
                            photo: Image.asset("assets/gatepytravel.png"),
                            text: "Travel Insurance",
                          ),
                          ),
                          GestureDetector(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                                  backgroundColor: Colors.white,
                                  title: Row(
                                    children: [
                                      Icon(Icons.hourglass_top_rounded, color: Colors.orange),
                                      SizedBox(width: 8),
                                      Text("Coming Soon", style: TextStyle(fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                  content: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Image.asset("assets/gatepyhealth.png", height: 100),
                                      SizedBox(height: 10),
                                      Text(
                                        "We're working hard to bring you the Health Insurance feature.\nStay tuned for exciting rewards!",
                                        style: TextStyle(fontSize: 14, color: Colors.black87),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                  actions: [
                                    TextButton(
                                      child: Text("OK", style: TextStyle(color: Colors.green)),
                                      onPressed: () => Navigator.of(context).pop(),
                                    ),
                                  ],
                                ),
                              );
                            },

                          child: Transfer_money(
                            photo: Image.asset("assets/gatepyhealth.png"),
                            text: "Health Insurance",
                          ),
                          ),
                        ],
                      ),
                      Gap(25.h),

                    ],
                  ),
                ),
              ),

              //Savings
              Gap(10.h),
              Container(
                height: 150.h,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.r),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF0f9b0f), // Solid green
                      blurRadius: 4,
                      spreadRadius: 0,
                      offset: Offset(0, 1),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 31, top: 20, right: 31),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Savings",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff000000),
                        ),
                      ),
                      Gap(15.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                                  backgroundColor: Colors.white,
                                  title: Row(
                                    children: [
                                      Icon(Icons.hourglass_top_rounded, color: Colors.orange),
                                      SizedBox(width: 8),
                                      Text("Coming Soon", style: TextStyle(fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                  content: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Image.asset("assets/gatepysavings.png", height: 100),
                                      SizedBox(height: 10),
                                      Text(
                                        "We're working hard to bring you the GatePy Savings feature.\nStay tuned for exciting rewards!",
                                        style: TextStyle(fontSize: 14, color: Colors.black87),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                  actions: [
                                    TextButton(
                                      child: Text("OK", style: TextStyle(color: Colors.green)),
                                      onPressed: () => Navigator.of(context).pop(),
                                    ),
                                  ],
                                ),
                              );
                            },
                            child: Transfer_money(
                              photo: Image.asset("assets/gatepysavings.png"),
                              text: "Gatepay Savings",
                            ),
                          ),
                          // Transfer_money(
                          //   photo: Image.asset("assets/dth.png"),
                          //   text: "Travel Insurance",
                          // ),
                          // Transfer_money(
                          //   photo: Image.asset("assets/electricity.png"),
                          //   text: "Electricity",
                          // ),
                        ],
                      ),
                      Gap(25.h),

                    ],
                  ),
                ),
              ),

              //Rewards
              Gap(10.h),
              Container(
                height: 150.h,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.r),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF0f9b0f), // Solid green
                      blurRadius: 4,
                      spreadRadius: 0,
                      offset: Offset(0, 1),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 31, top: 20, right: 31),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Rewards",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff000000),
                        ),
                      ),
                      Gap(15.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                                  backgroundColor: Colors.white,
                                  title: Row(
                                    children: [
                                      Icon(Icons.hourglass_top_rounded, color: Colors.orange),
                                      SizedBox(width: 8),
                                      Text("Coming Soon", style: TextStyle(fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                  content: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Image.asset("assets/gatepyrewards.png", height: 100),
                                      SizedBox(height: 10),
                                      Text(
                                        "We're working hard to bring you the Rewards feature.\nStay tuned for exciting rewards!",
                                        style: TextStyle(fontSize: 14, color: Colors.black87),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                  actions: [
                                    TextButton(
                                      child: Text("OK", style: TextStyle(color: Colors.green)),
                                      onPressed: () => Navigator.of(context).pop(),
                                    ),
                                  ],
                                ),
                              );
                            },
                            child: Transfer_money(
                              photo: Image.asset("assets/gatepyrewards.png"),
                              text: "Rewrds",
                            ),
                          ),


                        ],
                      ),

                    ],
                  ),
                ),
              ),


              //Refer and Earn
              Gap(10.h),
              Container(
                height: 100.h,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.r),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF0f9b0f), // Solid green
                      blurRadius: 4,
                      spreadRadius: 0,
                      offset: Offset(0, 1),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 31, top: 20, right: 31),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Refer and Earn",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff000000),
                        ),
                      ),
                      Gap(15.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                                  backgroundColor: Colors.white,
                                  title: Row(
                                    children: [
                                      Icon(Icons.hourglass_top_rounded, color: Colors.orange),
                                      SizedBox(width: 8),
                                      Text("Coming Soon", style: TextStyle(fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                  content: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Image.asset("assets/gatepyrefer.png", height: 100),
                                      SizedBox(height: 10),
                                      Text(
                                        "We're working hard to bring you the Refer and Earn feature.\nStay tuned for exciting rewards!",
                                        style: TextStyle(fontSize: 14, color: Colors.black87),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                  actions: [
                                    TextButton(
                                      child: Text("OK", style: TextStyle(color: Colors.green)),
                                      onPressed: () => Navigator.of(context).pop(),
                                    ),
                                  ],
                                ),
                              );
                            },
                            child: Transfer_money(
                              photo: Image.asset("assets/gatepyrefer.png"),
                              text: "Refer and Earn",
                            ),
                          )



                        ],
                      ),

                    ],
                  ),
                ),
              ),


            ],
      ),
    ),
      ),

    );
  }
}

class Transfer_money extends StatelessWidget {
  final String text;
  final Image photo;

  const Transfer_money({super.key, required this.text, required this.photo});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 42.w,
          height: 32.w,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.white.withOpacity(0.06),
                blurRadius: 6,
                spreadRadius: 1,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Center(child: photo),
        ),
        SizedBox(height: 7.h),
        Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Color(0xFF000000),
            fontSize: 10,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}


