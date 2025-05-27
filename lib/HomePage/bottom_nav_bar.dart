import 'package:flutter/material.dart';

const Color bottonNavBgColor = Color(0xff6A7F93);//Color(0xFF17203A);

final List<IconData> icons = [
  Icons.home,
  Icons.account_balance_wallet_rounded,
  Icons.grid_view_rounded,
  Icons.more_vert,
];

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTabSelected;

  BottomNavBar({
    required this.currentIndex,
    required this.onTabSelected,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
  child: Container(
    height: 60, //In Future remove the height
    padding: const EdgeInsets.all(12),
    margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 16),
    
    decoration: BoxDecoration(
      color: bottonNavBgColor.withOpacity(0.8),
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      boxShadow: [
        BoxShadow(
          color: bottonNavBgColor.withOpacity(0.3),
          offset: const Offset(0, 20),
          blurRadius: 20,
        ),
      ],
    ),
    child: Row(
      spacing: 20,
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: List.generate(
    4,//bottomNavItems.length,
    (index) { 
        return SizedBox(
          //height: 36,
          width: 36,
          child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 2),
            alignment: Alignment.center,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: SizedBox(width: 36, child: Icon(icons[index], color: Colors.black),),
          onPressed: () => onTabSelected(index)
      ,));
    }
  ),
  ),
    ));
  }
}

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

// class TabButton extends StatelessWidget {
//   const TabButton({super.key, required this.index});

//   final int index;

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//                   onTap: () {
//                     setState(() {
//                       selectedNavIndex = index;
//                     });
//                   },
//       child: Container(
//       decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(10))),
//       height: 36,
//       width: 36,
//       child: Icon(icons[index], color: Colors.black,), //height: MediaQuery.sizeOf(context).height * 0.1),
//       /*RiveAnimation.asset(
//         bottomNavItems[index].src,
//         artboard: bottomNavItems[index].artboard,
//       )*/
//       )
//     );
//   }
// }

// final List<IconData> icons = [
//   Icons.home,
//   Icons.account_balance_wallet_rounded,
//   Icons.grid_view_rounded,
//   Icons.more_vert,
// ];

// final List<Widget> pages = [
//   DashboardTab(),
//   CategoryTab(),
// ];

// class BottomNavBar extends StatefulWidget {
//   const BottomNavBar({super.key});
  
//   //final int selectedNavIndex = 0;

//   @override
//   State<BottomNavBar> createState() =>
//       _BottomNavBar();
// }

// class _BottomNavBar
//     extends State<BottomNavBar> {
//   @override
//   Widget build(BuildContext context) {
//     int selectedNavIndex = 0;
//     return Scaffold(
//       body: Center(child: (pages[selectedNavIndex])),
//       bottomNavigationBar: SafeArea(
//   child: Container(
//     height: 60, //In Future remove the height
//     padding: const EdgeInsets.all(12),
//     margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 16),
    
//     decoration: BoxDecoration(
//       color: bottonNavBgColor.withOpacity(0.8),
//       borderRadius: const BorderRadius.all(Radius.circular(10)),
//       boxShadow: [
//         BoxShadow(
//           color: bottonNavBgColor.withOpacity(0.3),
//           offset: const Offset(0, 20),
//           blurRadius: 20,
//         ),
//       ],
//     ),
//     child: Row(
//       spacing: 20,
//   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//   children: List.generate(
//     4,//bottomNavItems.length,
//     (index) { 
//         return SizedBox(
//           //height: 36,
//           width: 36,
//           child: ElevatedButton(
//           style: ElevatedButton.styleFrom(
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(10),
//             ),
//           ),
//           child: SizedBox(width: 36, child: Icon(icons[index], color: Colors.black),),
//           onPressed: () {
//           setState(() {
//             selectedNavIndex = index;
//           });
//       },));
//     }
//   ),
// ),
//   ),
//     ));
//   }
// }