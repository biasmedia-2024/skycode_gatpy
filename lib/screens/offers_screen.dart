import 'package:flutter/material.dart';

class OffersScreen extends StatelessWidget {
  final List<Map<String, String>> offers = [
    {
      "title": "20% Bonus on New Investment",
      "validTill": "25 April 2025",
    },
    {
      "title": "Invite & Earn ₹50 per referral",
      "validTill": "30 April 2025",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Active Offers")),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: offers.length,
        itemBuilder: (context, index) {
          final offer = offers[index];
          return Card(
            elevation: 3,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: ListTile(
              leading: Icon(Icons.local_offer, color: Colors.orange),
              title: Text(offer['title'] ?? ""),
              subtitle: Text("Valid till ${offer['validTill']}"),
            ),
          );
        },
      ),
    );
  }
}
