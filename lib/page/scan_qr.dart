import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:simple_barcode_scanner/simple_barcode_scanner.dart';

class QRPage extends StatefulWidget {
  const QRPage({super.key});

  @override
  State<QRPage> createState() => _QRPageState();
}

class _QRPageState extends State<QRPage> {
  String? qrResult;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scan QR Code"),
        backgroundColor: Colors.blueAccent,

      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Text(qrResult ?? ""),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(130.0, 3.0, 130.0, 3.0),
            child: ElevatedButton(
              onPressed: () async {
                var res = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SimpleBarcodeScannerPage(),
                    ));
                setState(() {
                  if (res is String) {
                    qrResult = res;
                  }
                });
              },
              child: const Text('Open Scanner'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(130.0, 3.0, 130.0, 3.0),
            child: ElevatedButton(onPressed: (){
              FlutterClipboard.copy('hello flutter friends').then(( value ) => print('copied'));
            }, child: Text("Copy")),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(130.0, 3.0, 130.0, 3.0),
            child: ElevatedButton(onPressed: (){
              Share.share('check out my website https://example.com');
            }, child: Text("Share")),
          )
        ],
      ),
    );
  }
}
