import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GoldWalletPage extends StatelessWidget {
  const GoldWalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gold Wallet"),
        backgroundColor: Color(0xff2B00D4),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildGoldWalletCard("Current Gold Rate", "6500 / gram"),
            SizedBox(height: 16.h),
            _buildGoldWalletCard("App Rate (Discount)", "6400 / gram"),
            SizedBox(height: 16.h),
            _buildGoldWalletCard("Total Gold Referred by Others", "10 grams"),
          ],
        ),
      ),
    );
  }

  Widget _buildGoldWalletCard(String title, String initialValue) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600, color: Colors.black),
          ),
          SizedBox(height: 8.h),
          TextField(
            controller: TextEditingController(text: initialValue),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.r),
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 12.w),
            ),
            style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold, color: Colors.orange),
          ),
        ],
      ),
    );
  }
}
