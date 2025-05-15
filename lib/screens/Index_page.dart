import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fuel_app/screens/history.dart';
import 'package:fuel_app/screens/homepage.dart';
import 'package:fuel_app/screens/scanner.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({super.key});

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  int _currentIndex = 0;

  final List<Widget> _tabs = [const HomePage(), Qr_screen(), HistoryScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _tabs[_currentIndex],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff0f9b0f),
              Color(0xff000000), // A lighter matching color for gradient
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: CurvedNavigationBar(
          backgroundColor: Colors.transparent, // Keep this transparent
          color: Colors.transparent, // Transparent to show the gradient
          buttonBackgroundColor: Colors.white.withOpacity(0.2), // Optional: for semi-transparent button
          animationDuration: const Duration(milliseconds: 300),
          height: 60.h,
          index: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            Image.asset("assets/house.png", height: 30.h, color: Colors.white),
            Image.asset("assets/scan.png", height: 30.h, color: Colors.white),
            Image.asset("assets/history.png", height: 30.h, color: Colors.white),
          ],
        ),
      ),
    );
  }

}
