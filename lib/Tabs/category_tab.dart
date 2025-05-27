import 'package:app_wallet/Tabs/AlertDialogs/category_alert_dialog.dart';
import 'package:app_wallet/stats_display.dart';
import 'package:app_wallet/stats_splitter.dart';
import 'package:flutter/material.dart';
//import 'package:pie_chart/pie_chart.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class CategoryTab extends StatelessWidget {
  const CategoryTab({super.key});

  void showGoalConfig(BuildContext context, final int estado) {
    showDialog(context: context, builder: (BuildContext context) {
        return const CategoryAlertDialog(estado: 1);
      },);
  }
  
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
      body: Column(
        children: [
          const SizedBox(height: 60),
          const Center(
            child: Text(
              "Categorías de Gastos",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5)), color: Colors.white,),
            height: 400,
            width: 260,
            child: Column(children: [
              SizedBox(height: 20),
              Text("Comida: 112,000", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
              StatsSplitter(),
              Text("Bebidas: 4,200", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
              StatsSplitter(),
              Text("Salidas: 54,000", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
            ],)
          ),//32),
          const SizedBox(height: 25,),
          SizedBox(
          height: 50,
          width: 240,
          //decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5)), color: Color(0xff6A7F93),),
          child: Row(
          spacing: 20,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[
            ElevatedButton(onPressed: () => showGoalConfig(context, 0), 
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 2),
                minimumSize: const Size(40, 40), 
                alignment: Alignment.center,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Icon(Icons.minimize, color: Colors.black)),
            ElevatedButton(onPressed: () => {}, 
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 2),
                minimumSize: const Size(40, 40), 
                alignment: Alignment.center,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Icon(Icons.category, color: Colors.black)),
            ElevatedButton(onPressed: () => showGoalConfig(context, 1), 
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 2),
                minimumSize: const Size(40, 40), 
                alignment: Alignment.center,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Icon(Icons.add, color: Colors.black)),
          ]),)
            
          // PieChart(
          //   dataMap: dataMap,
          //   animationDuration: const Duration(milliseconds: 800),
          //   chartType: ChartType.ring,
          //   chartRadius: MediaQuery.of(context).size.width * 0.7,
          //   ringStrokeWidth: 30,
          //   colorList: colorList,
          //   chartValuesOptions: const ChartValuesOptions(
          //     showChartValues: false,
          //   ),
          //   legendOptions: const LegendOptions(
          //     showLegends: true,
          //     legendPosition: LegendPosition.right,
          //     legendTextStyle: TextStyle(fontSize: 12),
          //   ),
          // ),
        ],
      ),
    );
  }
}