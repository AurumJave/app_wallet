import 'package:flutter/material.dart';

class StatsDisplay extends StatelessWidget {
  const StatsDisplay({super.key, required this.name, required this.color});

  final String name;
  final Color color;

  /*void showGoalConfig(BuildContext context) {
    showDialog(context: context, builder: (BuildContext context) {
        return const StatModifyDialog(existing: false);
      },);
  }*/

  @override
  Widget build(BuildContext context) {

  return Row(children: [
        const SizedBox(width: 17.5),
        Container(
          alignment: Alignment.center,
          width: 200,
          height: 40,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            //borderRadius: BorderRadius.all(Radius.circular(5.0)),
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          child: Row(children: [
            const SizedBox(width: 5),
            Icon(Icons.circle, color: color, size: 15),
            const SizedBox(width: 15),
            Text(
              name,
              textAlign: TextAlign.left,
              style: const TextStyle(
                color: Color.fromARGB(255, 111, 111, 111),
                fontSize: 16.0,
              ),
            ),
            // FlatButton(futureBuilder: Builder(
            //   () => openPopupGraphic();
            // ))
          ]),
        ),
        const SizedBox(width: 17.5),
        SizedBox(
          width: 40,
          height: 30,
          child: IconButton(
              padding: EdgeInsets.zero,
              style: IconButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: const Color(0xffD9B99B),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)))),
              icon: const Icon(Icons.edit, size: 20),
              onPressed: () {
                //showGoalConfig(context);
              },
              //.push(MaterialPageRoute(builder: (context) => const ())),
              ),
        ),
        const SizedBox(width: 15),
        SizedBox(
          width: 40,
          height: 30,
          child: IconButton(
              padding: EdgeInsets.zero,
              style: IconButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: const Color(0xffD9B99B),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)))),
              icon: const Icon(Icons.auto_graph, size: 20),
              onPressed: () => Navigator.pushNamed(context, '/goals_page'),
              //.push(MaterialPageRoute(builder: (context) => const ())),
              ),
        )
      ]);
  }
}