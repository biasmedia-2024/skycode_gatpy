import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff2B00D4),
        toolbarHeight: 100,
        title: Text(
          "Bank Accounts",
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
            child: Padding(
              padding: const EdgeInsets.only(left: 14, top: 16, right: 14),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromARGB(255, 132, 132, 132),
                            blurRadius: 4,
                            spreadRadius: 0,
                            offset: Offset(0, 1)),
                      ],
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: 95.h,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 24, top: 16, right: 33),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "assets/sbi.png",
                                height: 42.h,
                                width: 45,
                              ),
                              Gap(20),
                              Text(
                                "State Bank of India -1234",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff000000)),
                              ),
                              Gap(18.w),
                              Container(
                                width: 64.w,
                                height: 15,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.r),
                                  color: Color(0xff027A1C),
                                ),
                                child: Center(
                                  child: Text(
                                    "Primary",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 14,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Spacer(), // Pushes the "Activate Wallet" container to the bottom
                ],
              ),
            ),
          ),
          Container(
            height: 50.h,
            width: MediaQuery.of(context).size.width,
            color: Color(0xff2B00D4),
            child: Center(
              child: Text(
                "Add New Bank Account",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
