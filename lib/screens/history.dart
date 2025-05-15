import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  final List<Map<String, dynamic>> transactions = [
    {
      "name": "Fuel PVT LTD",
      "amount": "₹1000",
      "date": "20 Jan 2025",
      "color": Colors.red,
    },
    {
      "name": "Eco Diesel Company PVT LTD",
      "amount": "₹5000",
      "date": "18 Jan 2025",
      "color": Colors.purple,
    },
    {
      "name": "Eco Diesel Company PVT LTD",
      "amount": "₹1000",
      "date": "15 Jan 2025",
      "color": Colors.orange,
    },
    {
      "name": "Fuel PVT LTD",
      "amount": "₹1450",
      "date": "12 Jan 2025",
      "color": Colors.yellow,
    },
    {
      "name": "Fuel PVT LTD",
      "amount": "₹1000",
      "date": "12 Jan 2025",
      "color": Colors.red,
    },
    {
      "name": "Fuel PVT LTD",
      "amount": "₹1200",
      "date": "12 Jan 2025",
      "color": Colors.blue,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70.h,
        elevation: 0,
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
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text("Add Address",
                    style: TextStyle(color: Colors.white, fontSize: 20)),
                Gap(12.w),
                Icon(Icons.arrow_drop_down, color: Colors.white),
              ],
            ),
            Text("Jayanagar",
                style: TextStyle(color: Color(0xffA0BEF8), fontSize: 20)),
          ],
        ),
      ),

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: "Search by name, number or UPI ID",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.r),
                ),
              ),
            ),
            Gap(15.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildActionButton("Download statement", "assets/download.png"),
                _buildActionButton("Filters", "assets/list.png"),
              ],
            ),
            Gap(15.h),
            Expanded(
              child: ListView.builder(
                itemCount: transactions.length,
                itemBuilder: (context, index) {
                  final item = transactions[index];
                  return _buildTransactionCard(
                    item["name"],
                    item["amount"],
                    item["date"],
                    item["color"],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActionButton(String text, String asset) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xffBAB7B7)),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        children: [
          Text(text,
              style: TextStyle(
                  fontSize: 12.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.w600)),
          Gap(8.w),
          Image.asset(asset, width: 16.w, height: 16.h),
        ],
      ),
    );
  }

  Widget _buildTransactionCard(
      String name, String amount, String date, Color color) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.h),
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.shade300, blurRadius: 4, offset: Offset(0, 2)),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              child: Center(
                child: Text(name[0],
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold)),
              ),
              height: 36.h,
              width: 38.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r), color: color),
            ),
            Gap(12.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Paid to",
                    style: TextStyle(fontSize: 12.sp, color: Colors.grey)),
                Text(name,
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black)),
                Gap(4.h),
                Text(date,
                    style: TextStyle(fontSize: 12.sp, color: Colors.grey)),
              ],
            ),
          ]),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(amount,
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black)),
              Gap(4.h),
              Row(
                children: [
                  Text("Debited from",
                      style: TextStyle(fontSize: 10.sp, color: Colors.grey)),
                  Gap(5.w),
                  Image.asset("assets/sbi.png",
                      width: 20.w,
                      height: 20.h,
                      errorBuilder: (context, error, stackTrace) =>
                          Icon(Icons.error, color: Colors.red)),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
