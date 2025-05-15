// import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     const MaterialApp(
//       title: 'Mobile Scanner Example',
//       home: MyHome(),
//     ),
//   );
// }

// class MyHome extends StatelessWidget {
//   const MyHome({super.key});

//   Widget _buildItem(BuildContext context, String label, Widget page) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.of(context).push(
//               MaterialPageRoute(
//                 builder: (context) => page,
//               ),
//             );
//           },
//           child: Text(label),
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Mobile Scanner Example')),
//       body: Center(
//         child: ListView(
//           children: [
//             _buildItem(context, 'MobileScanner Simple', BarcodeScannerSimple()),
//             _buildItem(context, 'MobileScanner with ListView', BarcodeScannerListView()),
//             _buildItem(context, 'MobileScanner with Controller', BarcodeScannerWithController()),
//             _buildItem(context, 'MobileScanner with ScanWindow', BarcodeScannerWithScanWindow()),
//             _buildItem(context, 'MobileScanner with Controller (return image)', BarcodeScannerReturningImage()),
//             _buildItem(context, 'MobileScanner with zoom slider', BarcodeScannerWithZoom()),
//             _buildItem(context, 'MobileScanner with PageView', BarcodeScannerPageView()),
//             _buildItem(context, 'MobileScanner with Overlay', BarcodeScannerWithOverlay()),
//             _buildItem(context, 'Analyze image from file', BarcodeScannerAnalyzeImage()),
//             _buildItem(context, 'Picklist mode', PicklistResult()),
//           ],
//         ),
//       ),
//     );
//   }
// }

// // Placeholder Widgets (Remove these if you have actual widgets)
// class BarcodeScannerSimple extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(appBar: AppBar(title: Text("Simple Scanner")), body: Center(child: Text("BarcodeScannerSimple Page")));
//   }
// }

// class BarcodeScannerListView extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(appBar: AppBar(title: Text("ListView Scanner")), body: Center(child: Text("BarcodeScannerListView Page")));
//   }
// }

// class BarcodeScannerWithController extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(appBar: AppBar(title: Text("Controller Scanner")), body: Center(child: Text("BarcodeScannerWithController Page")));
//   }
// }

// class BarcodeScannerWithScanWindow extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(appBar: AppBar(title: Text("ScanWindow Scanner")), body: Center(child: Text("BarcodeScannerWithScanWindow Page")));
//   }
// }

// class BarcodeScannerReturningImage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(appBar: AppBar(title: Text("Returning Image Scanner")), body: Center(child: Text("BarcodeScannerReturningImage Page")));
//   }
// }

// class BarcodeScannerWithZoom extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(appBar: AppBar(title: Text("Zoom Scanner")), body: Center(child: Text("BarcodeScannerWithZoom Page")));
//   }
// }

// class BarcodeScannerPageView extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(appBar: AppBar(title: Text("PageView Scanner")), body: Center(child: Text("BarcodeScannerPageView Page")));
//   }
// }

// class BarcodeScannerWithOverlay extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(appBar: AppBar(title: Text("Overlay Scanner")), body: Center(child: Text("BarcodeScannerWithOverlay Page")));
//   }
// }

// class BarcodeScannerAnalyzeImage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(appBar: AppBar(title: Text("Analyze Image Scanner")), body: Center(child: Text("BarcodeScannerAnalyzeImage Page")));
//   }
// }

// class PicklistResult extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(appBar: AppBar(title: Text("Picklist Result")), body: Center(child: Text("PicklistResult Page")));
//   }
// }
