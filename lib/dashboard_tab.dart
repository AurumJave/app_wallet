import 'package:app_wallet/stats_display.dart';
import 'package:app_wallet/stats_splitter.dart';
import 'package:flutter/material.dart';

class DashboardTab extends StatelessWidget {
  const DashboardTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: SingleChildScrollView(
      child: Column(children: [
      SizedBox(height: 20),Column(children: [
                SizedBox(height: 10),
                Container(
                  alignment: Alignment.center,
                  width: 340,
                  height: 210,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    //borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: const Column(children: [
                    SizedBox(height: 10),
                    StatsDisplay(name: 'Gasto 1', color: Color.fromARGB(255, 92, 192, 89)),
                    StatsSplitter(),
                    StatsDisplay(name: 'algo seguro útil: 2.7 g/m', color: Color.fromARGB(255, 225, 225, 118)),
                    StatsSplitter(),
                    StatsDisplay(name: 'estos son placeholders', color: Color.fromARGB(255, 225, 225, 118)),
                    StatsSplitter(),
                    StatsDisplay(name: 'peren y meto lo de verdad', color: Color.fromARGB(255, 225, 225, 118)),
                  ])
              ),
            ])
          ])
      ));
  }
}