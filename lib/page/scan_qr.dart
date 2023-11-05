import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:scan_qr/page/about_app.dart';
import 'package:scan_qr/page/home_page.dart';
import 'package:scan_qr/page/my_profil.dart';
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
          Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 30),
              ),
              Card(
                clipBehavior: Clip.hardEdge,
                child: SizedBox(
                  width: 200,
                  height: 200,
                   child: ListTile(
                     leading: Padding(
                       padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 8),
                       child: Icon(Icons.qr_code_scanner_outlined, size: 150, color: Colors.black,),
                     ),
                     onTap: ()async{
                       var res = await Navigator.push(context, MaterialPageRoute(builder: (BuildContext ctx) => SimpleBarcodeScannerPage()));
                       setState(() {
                         if (res is String) {
                           qrResult = res;
                         }
                       });
                     },
                   ),
                ),
              )
            ],
          ),
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
        ],
      ),
      drawer: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width - 130,
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue
              ),
              child: Stack(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Center(
                          child: Icon(Icons.qr_code_scanner_outlined, size: 65, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 90),
                        child: Center(child: Text("QR Code Scanner App", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
                      ),
                    ],
                  )
                ],
              ),
            ),
            buildListTile(
              title: Text("QR Scanner"),
              leading: Icon(Icons.qr_code, color: Colors.black, size: 35),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext ctx) => QRPage()));
              },
            ),
            Divider(),
            buildListTile(
              title: Text("My Profile"),
              leading: Icon(Icons.person, color: Colors.black, size: 35),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext ctx) => MyProfil()));
              },
            ),
            Divider(),
            buildListTile(
              title: Text("About App"),
              leading: Icon(Icons.info, color: Colors.black, size: 35),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext ctx) => AboutPage()));
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget buildListTile({required title, required leading, required onTap}) {
    return ListTile(
            leading: leading,
            title: title,
            onTap: onTap,
          );
  }
}
