import 'package:flutter/material.dart';

class SubscriptionScreen extends StatelessWidget {
  final int daysRemaining = 12;
  final String subscriptionPlan = "Premium Gold Plan";
  final String expiryDate = "27 April 2025";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Subscription Details")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min, // Ensures it only takes necessary space
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Your Plan:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
                SizedBox(height: 8),
                Text(subscriptionPlan, style: TextStyle(fontSize: 16, color: Colors.black)),
                SizedBox(height: 20),
                Text("Days Remaining:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
                SizedBox(height: 8),
                Text("$daysRemaining days", style: TextStyle(fontSize: 16, color: Colors.blue)),
                SizedBox(height: 20),
                Text("Expires On:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
                SizedBox(height: 8),
                Text(expiryDate, style: TextStyle(fontSize: 16, color: Colors.red)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
