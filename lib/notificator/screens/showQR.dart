import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_flutter/qr_flutter.dart';

class ShowQR extends StatefulWidget {
  const ShowQR({super.key});

  @override
  State<ShowQR> createState() => _ShowQRState();
}

class _ShowQRState extends State<ShowQR> {
  String initialDate = '';
  String initialTime = '';
  String finalDate = '';
  String finalTime = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('QR'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Escanea Este codigo para el seguimiento y aviso de tu servicio',
                  style: TextStyle(),
                ),
              ),
              QrImageView(
                data: '1234567890',
                version: QrVersions.auto,
                size: 200.0,
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Codigo : 12g231',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              ElevatedButton(
                style: null,
                onPressed: () {
                  // Navigator.pushNamed(context, '/listServices');
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/listServices', (_) => false);
                },
                child: const Text('Listo'),
              ),
            ],
          )),
    );
  }
}
