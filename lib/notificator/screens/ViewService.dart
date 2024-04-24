import 'package:flutter/material.dart';
import 'package:notificame/notificator/services/notificator.service.dart';
import 'package:provider/provider.dart';

class ViewService extends StatefulWidget {
  const ViewService({super.key});

  @override
  State<ViewService> createState() => _ViewServiceState();
}

class _ViewServiceState extends State<ViewService> {
  String initialDate = '';
  String initialTime = '';
  String finalDate = '';
  String finalTime = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agregar Servicio'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Column(children: [
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Codigo: 23hh23',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Divider(),
            Text(
              'Servicio',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Divider(),
            Text(
              'Labado de auto',
              style: TextStyle(fontWeight: FontWeight.normal),
            ),
            Divider(),
            Text(
              'Cliente',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Divider(),
            Text(
              'Alejandro',
              style: TextStyle(fontWeight: FontWeight.normal),
            ),
            Divider(),
            Text(
              'Inicio del servicio',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Divider(),
            Text(
              '2024-01-01 13:00',
              style: TextStyle(fontWeight: FontWeight.normal),
            ),
            Divider(),
            Text(
              'Fin del servicio',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Divider(),
            Text(
              '2024-01-01 15:00',
              style: TextStyle(fontWeight: FontWeight.normal),
            ),
            const SizedBox(
              height: 10,
            ),
            Divider(),
            const SizedBox(
              height: 10,
            ),
            Divider(),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: null,
                  onPressed: () {},
                  child: const Text('Modificar'),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll<Color>(Colors.blue),
                      foregroundColor:
                          MaterialStatePropertyAll<Color>(Colors.white)),
                  onPressed: () {},
                  child: const Text('Terminar y notificar'),
                ),
              ],
            ),
            const SizedBox(height: 20),
          ]),
        ),
      ),
    );
  }
}

String format(DateTime date) {
  print('funcion de formato');
  print('${date.day}-${date.month}-${date.year}');
  return '${date.day}-${date.month}-${date.year}';
}
