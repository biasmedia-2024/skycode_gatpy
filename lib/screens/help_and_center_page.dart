import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // If using flutter_screenutil

class HelpAndCenterPage extends StatelessWidget {
  const HelpAndCenterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Help & Center",
          style: TextStyle(color: Colors.white, fontSize: 20.sp),
        ),
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
        ),         leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context); // Go back to previous screen
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),
              Text(
                "Help Topics",
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20.h),
              // How to Register or Add a Member
              ExpansionTile(
                title: Text(
                  "How to Register or Add a Member",
                  style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
                ),
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.0.w),
                    child: Text(
                      "1. Open the app and go to the 'Member' section from the home screen.\n"
                          "2. Tap 'Add Member' or 'Register' (depending on your user type).\n"
                          "3. Fill in the required details (e.g., name, phone number, email).\n"
                          "4. Verify your identity with an OTP sent to your registered mobile.\n"
                          "5. Submit the form to complete registration or add the member.\n"
                          "Note: Ensure you have an active account linked to proceed.",
                      style: TextStyle(fontSize: 16.sp, color: Colors.grey[800]),
                    ),
                  ),
                ],
              ),
              // How to Invest in Gold
              ExpansionTile(
                title: Text(
                  "How to Invest in Gold",
                  style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
                ),
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.0.w),
                    child: Text(
                      "1. Navigate to the 'Gold' option on the home screen.\n"
                          "2. Select 'Invest in Gold' from the available options.\n"
                          "3. Choose the amount or weight of gold you want to invest in.\n"
                          "4. Link your bank account or wallet for payment.\n"
                          "5. Confirm the transaction and track your investment in the 'Gold Wallet' section.\n"
                          "Note: Gold prices are updated daily based on market rates.",
                      style: TextStyle(fontSize: 16.sp, color: Colors.grey[800]),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30.h),
              // Support Contact Section
              Text(
                "Support Contact",
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10.h),
              Row(
                children: [
                  Icon(Icons.phone, size: 24.w, color: Color(0xff2B00D4)),
                  SizedBox(width: 10.w),
                  Text(
                    "+91 98765-43210", // Replace with actual support number
                    style: TextStyle(fontSize: 18.sp, color: Colors.black),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              Row(
                children: [
                  Icon(Icons.email, size: 24.w, color: Color(0xff2B00D4)),
                  SizedBox(width: 10.w),
                  Text(
                    "support@yourapp.com", // Replace with actual support email
                    style: TextStyle(fontSize: 18.sp, color: Colors.black),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}