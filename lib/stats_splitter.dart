import 'package:flutter/material.dart';

class StatsSplitter extends StatelessWidget {
  const StatsSplitter({super.key});

  @override
  Widget build(BuildContext context) {

  return Column(children: [
    const SizedBox(height:5),
    Container(
    height: 1,
    width: 320,
    decoration: const BoxDecoration(
                color: Color.fromARGB(255, 197, 197, 197),
                //borderRadius: BorderRadius.all(Radius.circular(5.0)),
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
    ),
    const SizedBox(height:5),
  ]);
  }
}