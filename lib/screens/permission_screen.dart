import 'package:flutter/material.dart';

class PermissionScreen extends StatefulWidget {
  @override
  _PermissionScreenState createState() => _PermissionScreenState();
}

class _PermissionScreenState extends State<PermissionScreen> {
  Map<String, bool> permissionStatus = {
    "secureDevice": true,
    "smsSecure": true,
    "billReminder": true,
    "financialSuggestions": false,
    "orderDelivery": false,
    "creditScore": false,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Permissions"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          buildSection(
            title: "Device State",
            items: [
              buildPermissionTile(
                title: "Secure UPI Payments",
                subtitle:
                "Allow access to verify your device and details for using UPI payments (as mandated by NPCI)",
                value: permissionStatus["secureDevice"]!,
                onChanged: (val) =>
                    setState(() => permissionStatus["secureDevice"] = val),
              ),
            ],
          ),
          buildSection(
            title: "SMS",
            items: [
              buildPermissionTile(
                title: "Secure UPI Payments",
                subtitle:
                "Allow sending SMSs (for UPI registration) and reading transactional messages (for OTPs)",
                value: permissionStatus["smsSecure"]!,
                onChanged: (val) =>
                    setState(() => permissionStatus["smsSecure"] = val),
              ),
              buildPermissionTile(
                title: "Bill Payment Reminders",
                subtitle:
                "Allow access to your text messages to fetch your bills and remind on time",
                value: permissionStatus["billReminder"]!,
                onChanged: (val) =>
                    setState(() => permissionStatus["billReminder"] = val),
              ),
              buildPermissionTile(
                title: "Get financial product suggestions",
                subtitle:
                "Allow access to SMS data stored on your device and suggest financial products",
                value: permissionStatus["financialSuggestions"]!,
                onChanged: (val) =>
                    setState(() => permissionStatus["financialSuggestions"] = val),
              ),
            ],
          ),
          buildSection(
            title: "Address & Contact Details",
            items: [
              buildPermissionTile(
                title: "Order Delivery by External Merchants",
                subtitle:
                "Allow sharing your address and contact details with merchant partners for order delivery",
                value: permissionStatus["orderDelivery"]!,
                onChanged: (val) =>
                    setState(() => permissionStatus["orderDelivery"] = val),
              ),
            ],
          ),
          buildSection(
            title: "Credit Information",
            items: [
              buildPermissionTile(
                title: "Check Credit Score",
                subtitle:
                "Allow access to your credit info from RBI-approved bureau(s) for the next 6 months for credit-related products/services.",
                value: permissionStatus["creditScore"]!,
                onChanged: (val) =>
                    setState(() => permissionStatus["creditScore"] = val),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildSection({required String title, required List<Widget> items}) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
                style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black)),
            SizedBox(height: 10),
            ...items,
          ],
        ),
      ),
    );
  }

  Widget buildPermissionTile({
    required String title,
    required String subtitle,
    required bool value,
    required Function(bool) onChanged,
  }) {
    return Column(
      children: [
        SwitchListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(title, style: TextStyle(fontWeight: FontWeight.w500)),
          subtitle: Text(subtitle),
          value: value,
          onChanged: onChanged,
          activeColor: Colors.green,
        ),
        Divider(),
      ],
    );
  }
}
