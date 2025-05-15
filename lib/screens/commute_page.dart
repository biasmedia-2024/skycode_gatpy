import 'package:flutter/material.dart';

class CommutePage extends StatelessWidget {
  final List<Map<String, String>> services = [
    {"title": "FASTag Recharge", "image": "assets/fastag.png"},
    {"title": "Metro Recharge", "image": "assets/metro.png"},
    {"title": "NCMC Card", "image": "assets/ncmc.png"},
    {"title": "Cab Booking", "image": "assets/cab.png"},
    {"title": "Bike Rentals", "image": "assets/bikerental.png"},
    {"title": "Bus Pass", "image": "assets/buspass.png"},
    {"title": "Toll Payment", "image": "assets/tollpayment.png"},
    {"title": "Parking Payment", "image": "assets/parking.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Commute Services"),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            // Search Bar
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.search, color: Colors.grey),
                  hintText: "Search commute services...",
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 15),

            // Grid of Commute Services
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  childAspectRatio: 1.2,
                ),
                itemCount: services.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      // Navigate to specific commute service page
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            blurRadius: 5,
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            services[index]["image"]!,
                            width: 50,
                            height: 50,
                          ),
                          SizedBox(height: 8),
                          Text(
                            services[index]["title"]!,
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
