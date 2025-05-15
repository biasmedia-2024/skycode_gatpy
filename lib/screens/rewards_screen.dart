import 'package:flutter/material.dart';

class RewardsScreen extends StatelessWidget {
  final int rewardPoints = 120;
  final String validTill = "30 April 2025";
  final String rewardNote = "Use your reward points to get discounts or cashback on your next investment.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Reward Points")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Your Reward Points:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
                SizedBox(height: 8),
                Text("$rewardPoints Points", style: TextStyle(fontSize: 20, color: Colors.green)),
                SizedBox(height: 20),
                Text("Valid Until:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
                SizedBox(height: 8),
                Text(validTill, style: TextStyle(fontSize: 16, color: Colors.green)),
                SizedBox(height: 20),
                Text("Note:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
                SizedBox(height: 8),
                Text(rewardNote, style: TextStyle(fontSize: 16, color: Colors.green)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
