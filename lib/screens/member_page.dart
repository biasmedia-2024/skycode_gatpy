import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart' as http;
import 'Index_page.dart';

class MemberPage extends StatefulWidget {
 final String? vehicleNumber; // Nullable to allow both new and existing

const MemberPage({Key? key, this.vehicleNumber}) : super(key: key); // Modify constructor


  @override
  _MemberPageState createState() => _MemberPageState();
}

class _MemberPageState extends State<MemberPage> {
  String selectedFuelType = "Petrol";
  String selectedPlan = "100 Days";
  String selectedPackageName = ""; // For plan selected by tap
  String selectedPackagePrice = "";


  late TextEditingController vehicleNumberController = TextEditingController();


  @override
  void initState() {
    super.initState();
    vehicleNumberController = TextEditingController(text: widget.vehicleNumber ?? '');
  }

  @override
  void dispose() {
    vehicleNumberController.dispose();
    super.dispose();
  }

  final Map<String, Map<String, List<Map<String, String>>>> fuelPlans = {
    "Petrol": {
      "100 Days": [
        {"1 LTR/day": "750"},
        {"2 LTR/day": "1500"},
        {"3 LTR/day": "2250"},
        {"4 LTR/day": "3000"},
        {"5 LTR/day": "3750"},
        {"10 LTR/day": "7500"},
      ],
      "365 Days": [
        {"1 LTR/day": "2500"},
        {"2 LTR/day": "5000"},
        {"3 LTR/day": "7500"},
        {"4 LTR/day": "10000"},
        {"5 LTR/day": "12000"},
        {"10 LTR/day": "25000"},
      ],
    },
    "Diesel": {
      "100 Days": [
        {"5 LTR/day": "3000"},
        {"10 LTR/day": "6000"},
        {"20 LTR/day": "12000"},
        {"30 LTR/day": "18000"},
        {"50 LTR/day": "30000"},
        {"100 LTR/day": "60000"},
      ],
      "365 Days": [
        {"5 LTR/day": "7500"},
        {"10 LTR/day": "15000"},
        {"20 LTR/day": "30000"},
        {"30 LTR/day": "45000"},
        {"50 LTR/day": "75000"},
        {"100 LTR/day": "150000"},
      ],
    },
  };

  Future<void> submitSubscription() async {
    final vehicleNumber = vehicleNumberController.text.trim();
    if (vehicleNumber.isEmpty || selectedPackageName.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Please fill all fields and select a package.")),
      );
      return;
    }

    final data = {
      "vehicle_number": vehicleNumberController.text,
      "fuel_type": selectedFuelType.toLowerCase(), // "petrol" or "diesel"
      "plan_duration": selectedPlan == "100 Days" ? 100 : 365,
      "daily_limit": int.parse(selectedPackageName!.split(" ").first), // gets `10` from "10 LTR/day"
      "price": selectedPackagePrice, // e.g., "12000.00"
    };


    final response = await http.post(
      Uri.parse('https://gatepy.com/api/subscriptions'),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(data),
    );

    print("Status Code: ${response.statusCode}");
    print("Response Body: ${response.body}");

    if (response.statusCode == 200) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Subscription successful")),
      );
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => IndexPage()));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Failed to subscribe. Please try again.")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Member Subscription"),
        backgroundColor: Colors.transparent,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF0f9b0f), Color(0xFF000000)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Vehicle Details", style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold, color: Colors.green)),
            SizedBox(height: 10.h),
            TextField(
              controller: vehicleNumberController,
              style: const TextStyle(
                color: Colors.black, // Change this to your desired color
                fontSize: 16, // Optional: change font size
              ),
              decoration: const InputDecoration(
                labelText: "Vehicle Number",
                labelStyle: TextStyle(color: Colors.grey), // Optional: label color
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 15.h),
            Text("Select Fuel Type", style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold, color: Colors.green)),
            Row(
              children: [
                Expanded(
                  child: RadioListTile(
                    title: Text("Petrol"),
                    value: "Petrol",
                    groupValue: selectedFuelType,
                    onChanged: (value) => setState(() => selectedFuelType = value.toString()),
                  ),
                ),
                Expanded(
                  child: RadioListTile(
                    title: Text("Diesel"),
                    value: "Diesel",
                    groupValue: selectedFuelType,
                    onChanged: (value) => setState(() => selectedFuelType = value.toString()),
                  ),
                ),
              ],
            ),
            Text("Select Plan", style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold, color: Colors.green)),
            Row(
              children: [
                Expanded(
                  child: RadioListTile(
                    title: Text("100 Days"),
                    value: "100 Days",
                    groupValue: selectedPlan,
                    onChanged: (value) => setState(() => selectedPlan = value.toString()),
                  ),
                ),
                Expanded(
                  child: RadioListTile(
                    title: Text("365 Days"),
                    value: "365 Days",
                    groupValue: selectedPlan,
                    onChanged: (value) => setState(() => selectedPlan = value.toString()),
                  ),
                ),
              ],
            ),
            Text("Available Plans", style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold, color: Colors.green)),
            Expanded(
              child: ListView.builder(
                itemCount: fuelPlans[selectedFuelType]![selectedPlan]!.length,
                itemBuilder: (context, index) {
                  var plan = fuelPlans[selectedFuelType]![selectedPlan]![index];
                  String key = plan.keys.first;
                  String value = plan.values.first;
                  return Card(
                    color: selectedPackageName == "$key - ₹$value" ? Colors.green.shade100 : null,
                    child: ListTile(
                      title: Text(key),
                      trailing: Text("₹ $value"),
                      onTap: () {
                        setState(() {
                          selectedPackageName = "$key - ₹$value";
                        });
                      },
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20.h),
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFF0f9b0f), Color(0xFF000000)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: ElevatedButton(
                onPressed: submitSubscription,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: EdgeInsets.zero,
                ),
                child: const Center(
                  child: Text("Subscribe", style: TextStyle(color: Colors.white, fontSize: 17)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
