import 'package:flutter/material.dart';
import '../SubscriptionModel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'member_page.dart';

class VehicleListScreen extends StatefulWidget {
  @override
  _VehicleListScreenState createState() => _VehicleListScreenState();
}

class _VehicleListScreenState extends State<VehicleListScreen> {
  late Future<List<Subscription>> subscriptions;

  @override
  void initState() {
    super.initState();
    subscriptions = fetchSubscriptions();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF0f9b0f), Color(0xFF000000)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Image.asset(
            //   'assets/logo.png', // ✅ Replace with your actual logo path
            //   height: 32,
            // ),
            const Text(
              'Vehicle List',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MemberPage()),
                );
              },
              child: const Text(
                'Add Vehicle',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),



    body: FutureBuilder<List<Subscription>>(
        future: subscriptions,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}"));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text("No vehicle subscriptions found."));
          }

          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              final sub = snapshot.data![index];
              return Card(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: ListTile(
                  title: Text(
                    "Vehicle: ${sub.vehicleNumber}",
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Fuel: ${sub.fuelType}"),
                      Text("Duration: ${sub.planDuration} days"),
                      Text("Limit: ${sub.dailyLimit} L/day"),
                      Text("Price: ₹${sub.price}"),
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MemberPage(vehicleNumber: sub.vehicleNumber),
                      ),
                    );
                  },
                ),
              );
            },
          );

        },
      ),
    );
  }
  Future<List<Subscription>> fetchSubscriptions() async {
    final response = await http.get(Uri.parse('https://gatepy.com/api/subscriptions'));

    if (response.statusCode == 200) {
      List data = json.decode(response.body);
      return data.map((json) => Subscription.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load subscriptions');
    }
  }

}
