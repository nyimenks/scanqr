import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text('About App', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 90),
              child: Icon(Icons.qr_code_scanner_outlined, size: 70, color: Colors.blue,),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text('QR Code Scanner App', style: TextStyle(color: Colors.blue, fontSize: 15),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              child: Text('Aplikasi QR Scanner adalah alat yang dirancang untuk membaca dan menginterpretasikan kode QR dengan cepat. Dengan menggunakan kamera ponsel, aplikasi ini memindai kode QR dan menguraikan informasi yang terkandung di dalamnya, seperti tautan web, teks, nomor kontak, atau berbagai jenis data lainnya. Aplikasi QR Scanner sangat berguna dalam berbagai situasi, seperti berbelanja, menghadiri acara, atau memperoleh informasi dengan mudah. Aplikasi ini masih dalam tahap pengemabangan dan belum bisa diunduh melalui playstore.', style: TextStyle(), textAlign: TextAlign.center,),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        child: Text('Version 1.0.0', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold)),
        elevation: 0,
      )
    );
  }
}
