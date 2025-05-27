import 'package:app_wallet/HomePage/bottom_nav_bar.dart';
import 'package:app_wallet/Tabs/category_tab.dart';
import 'package:flutter/material.dart';
import 'package:app_wallet/Tabs/dashboard_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onTabSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _tabs = [
    DashboardTab(),
    CategoryTab(),
    CategoryTab(),
    CategoryTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[_selectedIndex],
      bottomNavigationBar: BottomNavBar(
        currentIndex: _selectedIndex,
        onTabSelected: _onTabSelected,
      ),
    );
  }
}

