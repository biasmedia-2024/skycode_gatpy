import 'package:flutter/material.dart';

class InsurancePage extends StatelessWidget {
  final List<Map<String, String>> insuranceOptions = [
    {"title": "Health Insurance", "image": "assets/healthinsurance.png"},
    {"title": "Life Insurance", "image": "assets/lifeinsurance.png"},
    {"title": "Car Insurance", "image": "assets/carinsurance.png"},
    {"title": "Bike Insurance", "image": "assets/bikeinsurance.png"},
    {"title": "Travel Insurance", "image": "assets/travelinsurance.png"},
    {"title": "Home Insurance", "image": "assets/homeinsurance.png"},
    {"title": "Shop Insurance", "image": "assets/shopinsurance.png"},
    {"title": "Pet Insurance", "image": "assets/petinsurance.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Insurance Services"),
        backgroundColor: Colors.blueAccent,
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
                  hintText: "Search insurance services...",
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 15),

            // Grid of Insurance Options
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  childAspectRatio: 1.2,
                ),
                itemCount: insuranceOptions.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      // Navigate to specific insurance service page
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
                            insuranceOptions[index]["image"]!,
                            width: 50,
                            height: 50,
                          ),
                          SizedBox(height: 8),
                          Text(
                            insuranceOptions[index]["title"]!,
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
