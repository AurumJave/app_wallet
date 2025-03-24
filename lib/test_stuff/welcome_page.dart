import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size(MediaQuery.of(context).size.width, MediaQuery.of(context).size.height),
      child: Column( children: [
        SizedBox(
          width: 150,
          height: 40,
          child: const CircularProgressIndicator(
            
            valueColor: AlwaysStoppedAnimation<Color> (Colors.yellow),
          )
        )
          
        ],
      )
    ); 
  }
}

/*
Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withValues(alpha: 0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            )
            
          ),
*/