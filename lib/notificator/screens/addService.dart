import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Company extends StatefulWidget {
  const Company({super.key});

  @override
  State<Company> createState() => _CompanyState();
}

class _CompanyState extends State<Company> {
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
            const Center(
              child: Text(
                'Llena los datos para crear un servicio notificador',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Ex. Labado de auto completo',
                labelText: 'Nombre del servicio',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Cliente',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Divider(),
            Text(
              'Inicio de Servicio',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Divider(),
            const SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Fecha inicio ${initialDate}',
                  contentPadding: EdgeInsets.symmetric(vertical: 1.0),
                  fillColor: Colors.white,
                  prefixText: '',
                  hintText: initialDate,
                  filled: true,
                  prefixIcon: Icon(Icons.calendar_today),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple.shade100))),
              readOnly: true,
              onTap: () async {
                final result = await showDatePicker(
                  context: context,
                  firstDate: DateTime.now(),
                  lastDate: DateTime.now().add(const Duration(days: 365)),
                );
                print(result);
                if (result != null) {
                  setState(() {
                    initialDate = result.toString().split(' ')[0];
                  });
                }
              },
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Hora inicio ${initialTime}',
                  contentPadding: EdgeInsets.symmetric(vertical: 1.0),
                  fillColor: Colors.white,
                  hintText: initialTime,
                  filled: true,
                  prefixIcon: Icon(Icons.timer_sharp),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple.shade100))),
              readOnly: true,
              onTap: () async {
                final resultTime = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                );
                print(resultTime);
                if (resultTime != null) {
                  setState(() {
                    initialTime = resultTime.format(context).toString();
                  });
                }
              },
            ),
            const SizedBox(
              height: 10,
            ),
            Divider(),
            Text(
              'Finalización de Servicio',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Divider(),
            const SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Fecha final ${finalDate}',
                  contentPadding: EdgeInsets.symmetric(vertical: 1.0),
                  fillColor: Colors.white,
                  hintText: finalDate,
                  filled: true,
                  prefixIcon: Icon(Icons.calendar_today),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple.shade100))),
              readOnly: true,
              onTap: () async {
                final resultDateFinal = await showDatePicker(
                  context: context,
                  firstDate: DateTime.now(),
                  lastDate: DateTime.now().add(const Duration(days: 365)),
                );
                print(resultDateFinal);
                if (resultDateFinal != null) {
                  setState(() {
                    finalDate = resultDateFinal.toString().split(' ')[0];
                  });
                }
              },
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Hora final ${finalTime}',
                  contentPadding: EdgeInsets.symmetric(vertical: 1.0),
                  fillColor: Colors.white,
                  hintText: finalTime,
                  filled: true,
                  prefixIcon: Icon(Icons.timer_sharp),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple.shade100))),
              readOnly: true,
              onTap: () async {
                final resultTime = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                );
                print(resultTime);
                if (resultTime != null) {
                  setState(() {
                    finalTime = resultTime.format(context).toString();
                  });
                }
              },
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: null,
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/showQR');
                  },
                  child: const Text('Agregar notificador'),
                ),
                ElevatedButton(
                  style: null,
                  onPressed: () {},
                  child: const Text('Cancelar'),
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
