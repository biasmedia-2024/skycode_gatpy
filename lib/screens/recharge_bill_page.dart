import 'package:flutter/material.dart';

class RechargeBillsPage extends StatelessWidget {
  final List<Map<String, String>> services = [
    {"title": "Mobile Recharge", "image": "assets/recharge.png"},
    {"title": "DTH Recharge", "image": "assets/dth.png"},
    {"title": "Electricity Bill", "image": "assets/electricity.png"},
    {"title": "Water Bill", "image": "assets/waterbill.png"},
    {"title": "Gas Bill", "image": "assets/gasbill.png"},
    {"title": "Broadband Bill", "image": "assets/broadband.png"},
    {"title": "Credit Card Payment", "image": "assets/creditcard.png"},
    {"title": "EMI Payment", "image": "assets/emi.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Recharge & Bills"),
        backgroundColor: Colors.deepPurple,
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
                  hintText: "Search services...",
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 15),

            // Grid of Services
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
                      // Navigate to specific recharge/payment page
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
