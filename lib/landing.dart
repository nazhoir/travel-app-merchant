import 'package:flutter/material.dart';
import 'package:travel_app_merchant/views/history/history.dart';
import 'package:travel_app_merchant/views/home.dart';
import 'package:travel_app_merchant/views/payment/payment.dart';
import 'package:travel_app_merchant/views/report/report.dart';
import 'package:ionicons/ionicons.dart';

class Landing extends StatefulWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  late int _bottomNavIndex = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (newIndex) {
          setState(() {
            _bottomNavIndex = newIndex;
          });
        },
        children: const [
          Home(),
          Payment(),
          History(),
          Report(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 12,
        fixedColor: const Color.fromRGBO(47, 128, 237, 1),
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(
            () {
              _pageController.animateToPage(index,
                  duration: const Duration(milliseconds: 600),
                  curve: Curves.ease);
            },
          );
        },
        currentIndex: _bottomNavIndex,
        items: const [
          // Home
          BottomNavigationBarItem(
              activeIcon: Icon(
                Ionicons.home,
                color: Color.fromRGBO(47, 128, 237, 1),
              ),
              icon: Icon(
                Ionicons.home_outline,
                color: Colors.grey,
              ),
              label: "Beranda"),

          // Payment
          BottomNavigationBarItem(
              activeIcon: Icon(
                Ionicons.wallet,
                color: Color.fromRGBO(47, 128, 237, 1),
              ),
              icon: Icon(
                Ionicons.wallet_outline,
                color: Colors.grey,
              ),
              label: "Keuangan"),

          // History
          BottomNavigationBarItem(
              activeIcon: Icon(
                Ionicons.time,
                color: Color.fromRGBO(47, 128, 237, 1),
              ),
              icon: Icon(
                Ionicons.time_outline,
                color: Colors.grey,
              ),
              label: "Riwayat"),

          //Report
          BottomNavigationBarItem(
              activeIcon: Icon(
                Ionicons.bar_chart,
                color: Color.fromRGBO(47, 128, 237, 1),
              ),
              icon: Icon(
                Ionicons.bar_chart_outline,
                color: Colors.grey,
              ),
              label: "Laporan"),
          // Settings
        ],
      ),
    );
  }
}
