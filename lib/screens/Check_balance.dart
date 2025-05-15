import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fuel_app/screens/bank_account.dart';
import 'package:fuel_app/screens/wallet.dart';
import 'package:gap/gap.dart';

class CheckBalance extends StatefulWidget {
  const CheckBalance({super.key});

  @override
  State<CheckBalance> createState() => _CheckBalanceState();
}

class _CheckBalanceState extends State<CheckBalance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff2B00D4),
        toolbarHeight: 100,
        title: Text(
          "Check Balance",
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
        padding: const EdgeInsets.only(left: 15, right: 16, top: 16),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => AccountScreen(),
                ));
              },
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 24, top: 16, right: 33),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Accounts on UPI",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      Gap(8.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "assets/sbi.png",
                                height: 30.h,
                                width: 32,
                              ),
                              Gap(20),
                              Text(
                                "State Bank of India -1234",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff000000)),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 14,
                          )
                        ],
                      )
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    10.r,
                  ),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromARGB(255, 132, 132, 132),
                        blurRadius: 4,
                        spreadRadius: 0,
                        offset: Offset(0, 1))
                  ],
                ),
                width: MediaQuery.of(context).size.width,
                height: 95.h,
              ),
            ),
            Gap(15.h),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 24, top: 16, right: 37),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Pre-Paid Balance",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff000000)),
                    ),
                    Gap(15.h),
                    Column(
                      children: [
                        Pre_paid(
                          photo: Image.asset(
                            "assets/lite.png",
                            width: 32.w,
                            height: 30.h,
                          ),
                          text: "UPI Lite",
                        ),
                        Gap(40.h),
                        GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Wallet_screen(),
                                  ));
                            },
                            child: Pre_paid(
                              photo: Image.asset(
                                "assets/walletbalance.png",
                                width: 32.w,
                                height: 30.h,
                              ),
                              text: "App Wallet",
                            ))
                      ],
                    )
                  ],
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  10.r,
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Color.fromARGB(255, 132, 132, 132),
                      blurRadius: 4,
                      spreadRadius: 0,
                      offset: Offset(0, 1))
                ],
              ),
              width: MediaQuery.of(context).size.width,
              height: 178.h,
            ),
            Gap(28.h),
            Image.asset("assets/cashback.png")
          ],
        ),
      ),
    );
  }
}

class Pre_paid extends StatelessWidget {
  const Pre_paid({
    super.key,
    required this.text,
    required this.photo,
  });
  final String text;
  final Image photo;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            photo,
            Gap(19.w),
            Text(
              text,
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            )
          ],
        ),
        Icon(
          Icons.arrow_forward_ios,
          size: 12,
        )
      ],
    );
  }
}
