import 'package:flutter/material.dart';
import 'package:notificame/notificator/services/notificator.service.dart';

class ListService extends StatefulWidget {
  const ListService({super.key});

  @override
  State<ListService> createState() => _ListService();
}

class _ListService extends State<ListService> {
  final dataService = NotificatorService().getData();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/addService');
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text('Home')),
      body: Padding(
        padding: EdgeInsets.only(left: 0, right: 0),
        child: Column(
          children: [
            const Text(
              'Lista de servicios',
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 25),
              textAlign: TextAlign.center,
            ),
            Expanded(
                child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text('Servicio 1'),
                    subtitle: Text('Terminado'),
                    tileColor: Color.fromARGB(255, 32, 136, 167),
                    // trailing: ElevatedButton(
                    onTap: () {
                      print('sssss');
                      dataService.then((value) => print(value));
                      Navigator.pushNamed(context, '/viewService');
                    },
                    leading: Icon(Icons.timelapse_sharp),
                    textColor: (Colors.white),
                    iconColor: Colors.amber,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                  ),
                );
              },
            )),
          ],
        ),
      ),
    );
  }
}
