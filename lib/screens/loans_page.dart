import 'package:flutter/material.dart';

class LoansPage extends StatelessWidget {
  final List<Map<String, String>> loanServices = [
    {"title": "Personal Loan", "image": "assets/personalloan.png"},
    {"title": "Bike Loan", "image": "assets/bikeloan.png"},
    {"title": "Gold Loan", "image": "assets/goldloan.png"},
    {"title": "Home Loan", "image": "assets/homeloan.png"},
    {"title": "Business Loan", "image": "assets/businessloan.png"},
    {"title": "Education Loan", "image": "assets/educationloan.png"},
    {"title": "Car Loan", "image": "assets/carloan.png"},
    {"title": "Free Credit Score", "image": "assets/creditscore.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Loan Services"),
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
                  hintText: "Search loan services...",
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 15),

            // Grid of Loan Services
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  childAspectRatio: 1.2,
                ),
                itemCount: loanServices.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      // Navigate to specific loan service page
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
                            loanServices[index]["image"]!,
                            width: 50,
                            height: 50,
                          ),
                          SizedBox(height: 8),
                          Text(
                            loanServices[index]["title"]!,
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black),
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
