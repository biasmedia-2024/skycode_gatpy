import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  void _showAboutAppDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          title: Row(
            children: const [
              Icon(Icons.info_outline, color: Color(0xFF0f9b0f)),
              SizedBox(width: 8),
              Text(
                'About GatePy',
                style: TextStyle(color: Color(0xFF0f9b0f)),
              ),
            ],
          ),
          content: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'GatePay is a modern, secure, and user-friendly digital platform designed to simplify your payments, transfers, and utility services. Whether you\'re recharging your phone, paying bills, or managing your wallet, GatePay offers a seamless experience with just a few taps.',
                  style: TextStyle(fontSize: 14, color: Colors.green),
                ),
                SizedBox(height: 12),
                Text(
                  'Key Features:',
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
                ),
                SizedBox(height: 6),
                Text('- Mobile Recharge & Bill Payments', style: TextStyle(color: Colors.green),),
                Text('- Secure Money Transfers', style: TextStyle(color: Colors.green)),
                Text('- Transaction History & Reports', style: TextStyle(color: Colors.green)),
                Text('- Referral Program to Earn Rewards', style: TextStyle(color: Colors.green)),
                Text('- 24/7 Customer Support', style: TextStyle(color: Colors.green)),
                SizedBox(height: 12),
                Text(
                  'Our Vision:',
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
                ),
                SizedBox(height: 6),
                Text(
                  'To make financial services more accessible and effortless for everyone, anytime, anywhere.',style: TextStyle(color: Colors.green),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text(
                'CLOSE',
                style: TextStyle(color: Color(0xFF0f9b0f)),
              ),
            ),
          ],
        );
      },
    );
  }

  void _showPrivacyDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Privacy Policy", style: TextStyle(color: Colors.green),),
          scrollable: true,
          content: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Effective Date: 02-11-2025\n\n"
                      "GatePay (\"we\", \"our\", or \"us\") is committed to protecting your privacy. This Privacy Policy explains how we collect, use, disclose, and safeguard your information when you use our mobile application (\"the App\").\n\n"
                      "By using GatePay, you agree to the collection and use of information in accordance with this policy.\n\n"
                      "1. Information We Collect\n"
                      "a. Personal Information\n"
                      "• Vehicle Number\n"
                      "• Subscription Plan Details\n"
                      "• Fuel Type Preferences\n"
                      "• Any other information you voluntarily provide.\n\n"
                      "2. How We Use Your Information\n"
                      "We use the collected information to:\n"
                      "• Process subscriptions and payments\n"
                      "• Improve app performance and usability\n"
                      "• Respond to customer inquiries and support requests\n"
                      "• Send important updates or service-related notifications\n\n"
                      "3. Sharing Your Information\n"
                      "We do not sell or rent your personal information to third parties. We may share information:\n"
                      "• With trusted third-party service providers (e.g., payment gateways) who assist in operating the app.\n"
                      "• When required by law or to protect our legal rights.\n\n"
                      "4. Data Security\n"
                      "We implement appropriate technical and organizational measures to protect your personal information. However, no method of transmission over the Internet or method of electronic storage is 100% secure.\n\n"
                      "5. Your Choices\n"
                      "You can:\n"
                      "• Review or update your personal information by contacting us\n"
                      "• Request deletion of your account and associated data\n"
                      "• Opt-out of non-essential notifications\n\n"
                      "6. Children's Privacy\n"
                      "Our app is not intended for use by children under the age of 13. We do not knowingly collect personal information from children.\n\n"
                      "7. Changes to This Policy\n"
                      "We may update this Privacy Policy from time to time. You will be notified of any changes via the app or by other appropriate means.\n\n"
                      "8. Contact Us\n"
                      "Email: support@gatepy.com\n"
                      "Phone: +91-9844447547\n"
                      "Address: [Insert Business Address]",style: TextStyle(color: Colors.green),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text("Close"),
            ),
          ],
        );
      },
    );
  }


  void _showTermsDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Terms and Conditions", style: TextStyle(color: Colors.green),),
          scrollable: true,
          content: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Effective Date: 02-11-2025\n\n"
                      "These Terms and Conditions (\"Terms\") govern your use of the GatePy mobile application (\"App\"), operated by GatePy (\"we\", \"our\", or \"us\"). By using our App, you agree to be bound by these Terms.\n\n"
                      "1. Use of the App\n"
                      "• You must be at least 18 years old or have parental consent.\n"
                      "• Use the App only for lawful purposes.\n\n"
                      "2. User Registration and Account\n"
                      "• Registration may be required for certain features.\n"
                      "• Maintain confidentiality of your login credentials.\n"
                      "• Provide accurate and complete info.\n\n"
                      "3. Subscription Services\n"
                      "• Fees apply for subscriptions.\n"
                      "• Plans are valid per specified duration and limits.\n"
                      "• Refunds follow our refund policy.\n\n"
                      "4. User Conduct\n"
                      "• No spam, harassment, or law violations.\n"
                      "• Do not attempt unauthorized access.\n\n"
                      "5. Intellectual Property\n"
                      "• All content is owned/licensed by GatePy.\n"
                      "• No reproduction or distribution without permission.\n\n"
                      "6. Limitation of Liability\n"
                      "• Not liable for indirect or consequential damages.\n"
                      "• App is provided \"as is\".\n\n"
                      "7. Termination\n"
                      "• We may suspend/terminate your access for violations.\n"
                      "• You may stop using the App anytime.\n\n"
                      "8. Changes to Terms\n"
                      "• We may update Terms at any time.\n"
                      "• Continued use implies acceptance.\n\n"
                      "9. Contact Us\n"
                      "• Email: support@gatepy.com\n"
                      "• Phone: +91-9844447547\n"
                      "• Address: [Insert Business Address]",style: TextStyle(color: Colors.green),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text("Close"),
            ),
          ],
        );
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> aboutItems = [
      {
        'title': 'About App',
        'subtitle': 'Learn more about GatePay',
        'icon': Icons.info_outline,
        'color': Colors.green.shade700,
        'onTap': () => _showAboutAppDialog(context),
      },
      {
        'title': 'Privacy Policy',
        'subtitle': 'See how your data is protected',
        'icon': Icons.lock_outline,
        'color': Colors.orange.shade700,
        'onTap': () => _showPrivacyDialog(context),
      },
      {
        'title': 'Terms & Conditions',
        'subtitle': 'Read our terms and usage rules',
        'icon': Icons.rule,
        'color': Colors.red.shade700,
        'onTap': () => _showTermsDialog(context),
      },
    ];

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80.h,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF0f9b0f), Color(0xFF000000)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        title: const Text(
          'About Us',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: aboutItems.length,
        itemBuilder: (context, index) {
          final item = aboutItems[index];
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              leading: Icon(item['icon'], color: item['color']),
              title: Text(item['title'], style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text(item['subtitle']),
              trailing: Icon(Icons.arrow_forward_ios, size: 16),
              onTap: item['onTap'],
            ),
          );
        },
      ),
    );
  }
}
