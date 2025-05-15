import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class Wallet_screen extends StatefulWidget {
  const Wallet_screen({super.key});

  @override
  State<Wallet_screen> createState() => _Wallet_screenState();
}

class _Wallet_screenState extends State<Wallet_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff2B00D4),
        toolbarHeight: 100,
        title: Text(
          "Wallet",
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
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 110, right: 41, left: 41),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                        child: Image.asset(
                      "assets/wbalance.png",
                      width: 124.w,
                      height: 118.h,
                    )),
                    Gap(11.h),
                    Center(
                      child: Text(
                        "Balance:",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                    ),
                    Gap(11.h),
                    Center(
                      child: Text(
                        "20",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                    ),
                    Gap(68.h),
                    Divider(
                      color: Colors.grey,
                    ),
                    Gap(40.h),
                    Text(
                      "Activate your wallet",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    Gap(18.h),
                    Text(
                      "Your wallet has been inactive for the last 12\n months. Upgrade to the new wallet by\n activating. Terms and condition apply.",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff777272)),
                    ),
                    Gap(20.h),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 50.h,
            width: MediaQuery.of(context).size.width,
            color: Color(0xff2B00D4),
            child: Center(
              child: Text(
                "ACTIVATE WALLET",
                style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.w700, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
