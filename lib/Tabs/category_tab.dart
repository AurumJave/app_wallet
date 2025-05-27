import 'package:app_wallet/stats_display.dart';
import 'package:app_wallet/stats_splitter.dart';
import 'package:flutter/material.dart';
  @override
  Widget build(BuildContext context) {
    final dataMap = {
      "Email": 20.0,
      "Direct": 25.0,
      "Search": 30.0,
      "Video Ads": 10.0,
      "Union Ads": 15.0,
    };

    final colorList = [
      const Color(0xFFDAE8FF), // Email
      const Color(0xFF6C8EBF), // Direct
      const Color(0xFF2B3A55), // Search
      Colors.black87,          // Video Ads
      const Color(0xFF666C77), // Union Ads
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(height: 60),
          const Center(
            child: Text(
              "TUS GASTOS",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          const SizedBox(height: 32),
          PieChart(
            dataMap: dataMap,
            animationDuration: const Duration(milliseconds: 800),
            chartType: ChartType.ring,
            chartRadius: MediaQuery.of(context).size.width * 0.7,
            ringStrokeWidth: 30,
            colorList: colorList,
            chartValuesOptions: const ChartValuesOptions(
              showChartValues: false,
            ),
            legendOptions: const LegendOptions(
              showLegends: true,
              legendPosition: LegendPosition.right,
              legendTextStyle: TextStyle(fontSize: 12),
            ),
          ),
          const Spacer(),
          const CustomBottomNavBar(),
        ],
      ),
    );
  }
}


class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class CategoryTab extends StatelessWidget {
  const CategoryTab({super.key});

  /*void showGoalConfig(BuildContext context) {
    showDialog(context: context, builder: (BuildContext context) {
        return const StatModifyDialog(existing: false);
      },);
  }*/

    @override
  Widget build(BuildContext context) {
    final dataMap = {
      "Email": 20.0,
      "Direct": 25.0,
      "Search": 30.0,
      "Video Ads": 10.0,
      "Union Ads": 15.0,
    };

    final colorList = [
      const Color(0xFFDAE8FF), // Email
      const Color(0xFF6C8EBF), // Direct
      const Color(0xFF2B3A55), // Search
      Colors.black87,          // Video Ads
      const Color(0xFF666C77), // Union Ads
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(height: 60),
          const Center(
            child: Text(
              "TUS GASTOS",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          const SizedBox(height: 32),
          PieChart(
            dataMap: dataMap,
            animationDuration: const Duration(milliseconds: 800),
            chartType: ChartType.ring,
            chartRadius: MediaQuery.of(context).size.width * 0.7,
            ringStrokeWidth: 30,
            colorList: colorList,
            chartValuesOptions: const ChartValuesOptions(
              showChartValues: false,
            ),
            legendOptions: const LegendOptions(
              showLegends: true,
              legendPosition: LegendPosition.right,
              legendTextStyle: TextStyle(fontSize: 12),
            ),
          ),
          const Spacer(),
          const CustomBottomNavBar(),
        ],
      ),
    );
  }
}