import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:share_plus/share_plus.dart';
import 'package:flutter/services.dart';

class QRPage extends StatelessWidget {
  const QRPage({super.key});

  final String upiID1 = "6360331169@axl";
  final String upiID2 = "6360331169@ybl";
  final String qrData = "upi://pay?pa=6360331169@axl&pn=YourName&mc=123456&tid=txn1234"; // Sample UPI Link

  void _copyToClipboard(BuildContext context, String text) {
    Clipboard.setData(ClipboardData(text: text));
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Copied to clipboard")),
    );
  }

  void _shareQRCode() {
    Share.share("Scan this QR code to pay: $qrData");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("QR and UPI ID")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("From any UPI app", style: TextStyle(fontSize: 16, color: Colors.grey)),
            SizedBox(height: 10),

            // Bank Name & Primary Tag
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/kotak_logo.png"), // Replace with bank logo
                  radius: 20,
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Text("Kotak Mahindra Bank - 6701", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(10)),
                  child: Text("Primary", style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
            SizedBox(height: 20),

            // QR Code
            Center(
              child: GestureDetector(
                onTap: _shareQRCode,
                child: QrImageView(
                  data: qrData,
                  size: 200,
                  backgroundColor: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 20),

            // Share & Download QR
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildButton(Icons.share, "SHARE QR", _shareQRCode),
                SizedBox(width: 20),
                _buildButton(Icons.download, "DOWNLOAD QR", () {
                  // Implement QR Download Logic
                }),
              ],
            ),
            SizedBox(height: 30),

            // UPI IDs
            Text("UPI IDs and Numbers", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black)),
            SizedBox(height: 10),
            _buildUpiRow(upiID1, "Displayed on home", context),
            SizedBox(height: 10),
            _buildUpiRow(upiID2, "", context),

            Spacer(),
            Center(child: Image.asset("assets/logo.png", height: 40)), // Powered by UPI
          ],
        ),
      ),
    );
  }

  Widget _buildButton(IconData icon, String label, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Icon(icon, color: Colors.purple, size: 28),
          SizedBox(height: 5),
          Text(label, style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  Widget _buildUpiRow(String upiID, String subtext, BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(color: Colors.grey[200], borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(upiID, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              if (subtext.isNotEmpty) Text(subtext, style: TextStyle(fontSize: 12, color: Colors.grey)),
            ],
          )),
          GestureDetector(
            onTap: () => _copyToClipboard(context, upiID),
            child: Icon(Icons.copy, color: Colors.purple),
          ),
        ],
      ),
    );
  }
}
