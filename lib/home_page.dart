import 'package:app_wallet/bottom_nav_bar.dart';
import 'package:app_wallet/category_tab.dart';
import 'package:flutter/material.dart';
import 'package:app_wallet/dashboard_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: const TabBarView(
          children: [
            DashboardTab(),
            CategoryTab(),
            Icon(Icons.settings),
            Icon(Icons.settings),
          ],
        ),
        bottomNavigationBar: BottomNavBar()/*SafeArea( child: 
          BottomAppBar(
            padding: EdgeInsets.only(bottom: MediaQuery.sizeOf(context).height * 0.01),
            height: MediaQuery.sizeOf(context).height * 0.1,
            color: const Color.fromARGB(255, 106, 127, 147),
            child: SizedBox(
              width: MediaQuery.sizeOf(context).height * 0.8,
              child: TabBar(
                tabs: [
                  //SizedBox(
                  //  height: 23,
                  //  width: 20,
                  //  child: 
                  //),
                  Tab(icon: const Icon(Icons.home, color: Colors.black), height: MediaQuery.sizeOf(context).height * 0.1),
                  Tab(icon: const Icon(Icons.account_balance_wallet_rounded, color: Colors.black), height: MediaQuery.sizeOf(context).height * 0.1),
                  Tab(icon: const Icon(Icons.grid_view_rounded, color: Colors.black), height: MediaQuery.sizeOf(context).height * 0.1),
                ],
              ),
          ) 
        ),),*/
      ),
    );
  }
}

