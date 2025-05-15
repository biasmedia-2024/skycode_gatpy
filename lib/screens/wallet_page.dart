import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({super.key});

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  final TextEditingController userBalanceController = TextEditingController(text: "5000");
  final TextEditingController discountRemainingController = TextEditingController(text: "500");
  final TextEditingController subscriptionBalanceController = TextEditingController(text: "20L Petrol");
  final TextEditingController totalSavingsController = TextEditingController(text: "2500");

  @override
  void dispose() {
    userBalanceController.dispose();
    discountRemainingController.dispose();
    subscriptionBalanceController.dispose();
    totalSavingsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wallet", style: TextStyle(color: Colors.white),),
        backgroundColor: Color(0xff2B00D4),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildWalletCard("User Balance", userBalanceController),
            SizedBox(height: 16.h),
            _buildWalletCard("Discount Remaining", discountRemainingController),
            SizedBox(height: 16.h),
            _buildWalletCard("Subscription Balance", subscriptionBalanceController),
            SizedBox(height: 16.h),
            _buildWalletCard("Total Savings", totalSavingsController),
          ],
        ),
      ),
    );
  }

  Widget _buildWalletCard(String title, TextEditingController controller) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.r),
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
            controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              contentPadding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 12.w),
            ),
            style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold, color: Colors.green),
          ),
        ],
      ),
    );
  }
}
