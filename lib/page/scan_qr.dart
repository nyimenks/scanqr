import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:scan_qr/page/home_page.dart';
// import 'package:share_plus/share_plus.dart';
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
            child: Center(
                child: Text(qrResult ?? "", style: TextStyle(backgroundColor: Colors.blueAccent, fontStyle: FontStyle.italic))),
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
              FlutterClipboard.copy(qrResult ?? "").then(( value ) => print('copied'));
              Fluttertoast.showToast(
                  msg: "Url disalin",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.CENTER_RIGHT,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.blue,
                  textColor: Colors.white,
                  fontSize: 16.0
              );
            }, child: Text("Copy")),

          ),
          // Padding(
          //   padding: const EdgeInsets.fromLTRB(130.0, 3.0, 130.0, 3.0),
          //   child: ElevatedButton(onPressed: (){
              // Share.share('check out my website https://example.com');
            // }, child: Text("Share")),
          // )
          Padding(
            padding: const EdgeInsets.fromLTRB(130.0, 3.0, 130.0, 3.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext ctx) => HomePage()));
              },
              child: Text("Home Page"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
