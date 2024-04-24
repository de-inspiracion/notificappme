import 'package:flutter/material.dart';
import 'package:notificame/notificator/screens/ViewService.dart';
import 'package:notificame/notificator/screens/addService.dart';
import 'package:notificame/notificator/screens/listService.dart';
import 'package:notificame/notificator/screens/showQR.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 58, 143, 183)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Notificame'),
      initialRoute: '/listServices',
      routes: {
        '/listServices': (context) => const ListService(),
        '/addService': (context) => const Company(),
        '/viewService': (context) => const ViewService(),
        '/showQR': (context) => const ShowQR(),
        '/home': (context) => const MyHomePage(
              title: 'noti',
            ),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
          child: ElevatedButton(
        style: null,
        onPressed: () {
          Navigator.pushNamed(context, '/listServices');
        },
        child: const Text('Agregar notificador'),
      )),
    );
  }
}
