import 'package:flutter/material.dart';

class DashboardTab extends StatelessWidget {
  const DashboardTab({super.key});

  /*void showGoalConfig(BuildContext context) {
    showDialog(context: context, builder: (BuildContext context) {
        return const StatModifyDialog(existing: false);
      },);
  }*/

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
              'Bienvenido, ',
              style: TextStyle(fontSize: 18, color: Colors.grey),
          ),
          const SizedBox(height: 4),
          Text(
              'Mateo!',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
          ),
          const SizedBox(height: 16),
          // No Ads / Pro cards
          Container( 
            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)), color: Color(0xff6A7F93),),
            child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _infoCard(
                backgroundColor: Colors.white,
                textColor: Colors.black,
                content: Center(
                  child: Column(children:[
                    SizedBox(height: 10),
                    Text("No Ads!", style: TextStyle(fontSize: 16)),
                    SizedBox(height: 10),
                    Icon(Icons.no_photography, size: 40,),
                    SizedBox(height: 10),
                    ElevatedButton(onPressed: () =>{}, 
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 2),
                      minimumSize: const Size(10, 40), 
                      alignment: Alignment.center,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('\$5,99', style: TextStyle(fontSize: 11, decoration: TextDecoration.lineThrough)),
                        SizedBox(width: 2),
                        Text("\$2,99", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,)),
                        Text("/Month", style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold,)),
                    ]),),
                    SizedBox(height: 10),
                  ])
                ),
              ),
              _infoCard(
                backgroundColor: Colors.black87,
                textColor: Colors.white,
                content: Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("Become VIP!", style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(height: 10),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("¡No Ads!"),
                            SizedBox(height: 2),
                            Text("Financial Analisis"),
                            SizedBox(height: 2),
                            Text("Financial Advisor"),
                            SizedBox(height: 8),
                            ElevatedButton(
                              onPressed: () =>{}, 
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(horizontal: 2),
                                // Constrain the button's size
                                minimumSize: const Size(10, 40), // Adjust as needed
                                // Use alignment to center the child within the constrained space
                                alignment: Alignment.center,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('\$9,99', style: TextStyle(fontSize: 11, decoration: TextDecoration.lineThrough)),
                                  SizedBox(width: 2),
                                  Text("\$6,99", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,)),
                                  Text("/Month", style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold,)),
                              ]),),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),),

          const SizedBox(height: 16),
          
          Container( 
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)), color: Color(0xff6A7F93),),
            child: Row(children: [ 
              _infoCard(
                backgroundColor: Colors.white,
                content: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: Text(
                        "Gastos Mensuales",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(height: 8),
                    SizedBox(
                      height: 100,
                      child: CustomPaint(
                        painter: _LineGraphPainter(),
                        child: Container(),
                      ),
                    ),
                  ],
                ),
          )]),),
          const SizedBox(height: 16),
          // Gastos Mayores + Progress
          Container( 
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)), color: Color(0xff6A7F93),),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  LinearProgressIndicator(
                    value: 0.5,
                    backgroundColor: Colors.grey[300],
                    color: Color.fromARGB(255, 44, 62, 80),
                    minHeight: 6,
                  ),
                  const SizedBox(height: 8),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("250", style: TextStyle(color: Colors.white)),
                      Text("500", style: TextStyle(color: Colors.white)),
                    ],
                  ),
                  const SizedBox(height: 8),
                  const Align(
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Gastos Mayores", style: TextStyle(color: Colors.white)),
                        Text("• Comida", style: TextStyle(color: Colors.white)),
                        Text("• Ocio", style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
      ],
      ),
    );
  }

  Widget _infoCard({
    required Widget content,
    Color backgroundColor = Colors.white,
    Color textColor = Colors.black,
  }) {
    return Container(
      width: 150,
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: DefaultTextStyle(
        style: TextStyle(color: textColor),
        child: content,
      ),
    );
  }
}

class _LineGraphPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black87
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    final points = [
      Offset(0, size.height),
      Offset(size.width * 0.25, size.height * 0.5),
      Offset(size.width * 0.5, size.height * 0.7),
      Offset(size.width * 0.75, size.height * 0.4),
      Offset(size.width, size.height * 0.1),
    ];

    final path = Path()..moveTo(points[0].dx, points[0].dy);
    for (var i = 1; i < points.length; i++) {
      path.lineTo(points[i].dx, points[i].dy);
    }

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}