import 'package:flutter/material.dart';

List<String> items = [
  "Comida",
  "Bebidas",
  "Salidas"
];

class CategoryAlertDialog extends StatelessWidget {
  const CategoryAlertDialog({super.key, required this.estado});
  final int estado;
  @override
  Widget build(BuildContext context) {
    return AlertDialog( 
          title: Text('Registrar gasto'),
          shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(2))),
          content: PreferredSize(
          preferredSize: const Size(160, 440),
          child: SizedBox(height: 360, child: Column(children:[
            Container(alignment: Alignment.topRight, child:
              IconButton(icon: Icon(Icons.question_mark, color: Colors.grey.shade400), onPressed: () => {})
            ),
            const TextField(
            decoration: InputDecoration(hintText: "Cantidad"),
            ),
            SizedBox(height: 20),
            Text("Categoría:"),
            SizedBox(height: 5),
            DropdownMenu(dropdownMenuEntries: 
              List.generate(
                3,//bottomNavItems.length,
                (index) { 
                    return DropdownMenuEntry(value: index, label: items[index]);
                }
              ),
            )])
          )),
          actions: <Widget>[
            TextButton(
              child: const Text('Cancelar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('Guardar'),
              onPressed: () {
                ///////////////
                //Base de datos plssssss - estado indica 0 si es perdida, 1 si es ganancia xd
                /////////////////////
                Navigator.of(context).pop();
                // Handle the submit action
              },
            ),
          ],
          );
  }
}