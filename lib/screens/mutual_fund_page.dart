import 'package:flutter/material.dart';

class MutualFundPage extends StatelessWidget {
  final List<Map<String, String>> mutualFundsOptions = [
    {"title": "Equity Funds", "image": "assets/equityfund.png"},
    {"title": "Debt Funds", "image": "assets/debtfund.png"},
    {"title": "Hybrid Funds", "image": "assets/debtfund.png"},
    {"title": "SIP Investments", "image": "assets/sipinvestment.png"},
    {"title": "Tax Saving (ELSS)", "image": "assets/taxsavings.png"},
    {"title": "Index Funds", "image": "assets/indexfund.png"},
    {"title": "Liquid Funds", "image": "assets/liquidfund.png"},
    {"title": "Gold Funds", "image": "assets/goldfund.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mutual Funds"),
        backgroundColor: Colors.greenAccent[700],
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
                  hintText: "Search mutual funds...",
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 15),

            // Grid of Mutual Fund Options
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  childAspectRatio: 1.2,
                ),
                itemCount: mutualFundsOptions.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      // Navigate to specific mutual fund details page
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
                            mutualFundsOptions[index]["image"]!,
                            width: 50,
                            height: 50,
                          ),
                          SizedBox(height: 8),
                          Text(
                            mutualFundsOptions[index]["title"]!,
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
