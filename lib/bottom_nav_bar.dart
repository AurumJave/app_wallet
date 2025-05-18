import 'package:app_wallet/rive_model.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

const Color bottonNavBgColor = Color(0xFF17203A);

// class Button extends StatelessWidget {
//   const Button({super.key, required index});

//   final int index = 0;
//   final Set<IconData> icons = {
//     Icons.abc,
//     Icons.abc
//   }

//   @override
//   Widget build(BuildContext context) {
//     return const Icon(icon: Icons.access_alarm);
//   }
// }

final List<IconData> icons = [
  Icons.home,
  Icons.account_balance_wallet_rounded,
  Icons.grid_view_rounded,
  Icons.more_vert,
];

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});
  
  @override
  State<BottomNavBar> createState() =>
      _BottomNavBar();
}

class _BottomNavBar
    extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SafeArea(
  child: Container(
    height: 60, //TODO: In Future remove the height
    padding: const EdgeInsets.all(12),
    margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 12),
    
    decoration: BoxDecoration(
      color: bottonNavBgColor.withOpacity(0.8),
      borderRadius: const BorderRadius.all(Radius.circular(24)),
      boxShadow: [
        BoxShadow(
          color: bottonNavBgColor.withOpacity(0.3),
          offset: const Offset(0, 20),
          blurRadius: 20,
        ),
      ],
    ),
    child: Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: List.generate(
    4,//bottomNavItems.length,
    (index) => Container(
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(10))),
      height: 36,
      width: 36,
      child: Icon(icons[index], color: Colors.black,), //height: MediaQuery.sizeOf(context).height * 0.1),
      /*RiveAnimation.asset(
        bottomNavItems[index].src,
        artboard: bottomNavItems[index].artboard,
      )*/
    ),
  ),
),
  ),
    ));
  }
}