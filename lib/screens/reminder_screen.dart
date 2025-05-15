import 'package:flutter/material.dart';
import 'package:fuel_app/screens/rewards_screen.dart';
import 'package:fuel_app/screens/subscription_screen.dart';

import 'offers_screen.dart';

class ReminderScreen extends StatelessWidget {
  final int subscriptionDaysRemaining = 12;
  final String offerValidTill = "25 April 2025";
  final String rewardsValidTill = "30 April 2025";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Reminders"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildCard(
              icon: Icons.subscriptions,
              title: "Subscription",
              subtitle: "$subscriptionDaysRemaining days remaining",
              color: Colors.blueAccent,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => SubscriptionScreen()),
                );
              },
            ),
            SizedBox(height: 12),
            _buildCard(
              icon: Icons.local_offer,
              title: "Active Offers",
              subtitle: "Valid till $offerValidTill",
              color: Colors.orangeAccent,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => OffersScreen()),
                );
              },
            ),
            SizedBox(height: 12),
            _buildCard(
              icon: Icons.card_giftcard,
              title: "Reward Points",
              subtitle: "Valid till $rewardsValidTill",
              color: Colors.greenAccent,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => RewardsScreen()),
                );
              },
            ),
          ],
        ),
      ),

    );
  }

  Widget _buildCard({
    required IconData icon,
    required String title,
    required String subtitle,
    required Color color,
    required VoidCallback onTap, // <-- Add this
  }) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: color,
          child: Icon(icon, color: Colors.white),
        ),
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle),
        trailing: Icon(Icons.arrow_forward_ios, size: 16),
        onTap: onTap, // <-- Use it here
      ),
    );
  }
}

