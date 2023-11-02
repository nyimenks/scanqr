import 'package:flutter/material.dart';
import 'package:scan_qr/page/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Home Page',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Color(0xFF328062),
        ),
        body: Column(
          children: [
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext ctx) => ProfilePage()));
                },
                child: Text("Profil page"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF328062),
                ),
              ),
            )
          ],
        ),
        drawer: Container(
          padding: EdgeInsets.symmetric(horizontal: 7),
          color: Colors.white,
          width: MediaQuery.of(context).size.width - 130,
          child: ListView(
          children: [
            Text("Gmail",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),),
            Divider(),
            buildRow(
                icons: Icon(Icons.collections_outlined),
                text: ("Semua kotak masuk")
            ),
            Divider(),
            buildRow(
              icons: Icon(Icons.inbox),
              text: ("Utama")
            ),
            buildRow(
                icons: Icon(Icons.discount_outlined),
                text: ("Promosi")
            ),
            buildRow(
                icons: Icon(Icons.group),
                text: ("Sosial")
            ),buildRow(
                icons: Icon(Icons.info_outline),
                text: ("Update")
            ),
            Divider(),
            Text("Semua label"),
            Divider(),
            buildRow(
                icons: Icon(Icons.star_border),
                text: ("Berbintang")
            ),
            buildRow(
                icons: Icon(Icons.access_time),
                text: ("Ditunda")
            ),
            buildRow(
                icons: Icon(Icons.label_important_outline),
                text: ("Penting")
            ),
            buildRow(
                icons: Icon(Icons.send_rounded),
                text: ("Terkirim")
            ),
            buildRow(
                icons: Icon(Icons.schedule_send),
                text: ("Terjadwal")
            ),
            buildRow(
                icons: Icon(Icons.send_time_extension_outlined),
                text: ("Kotak keluar")
            ),
            buildRow(
                icons: Icon(Icons.insert_drive_file_outlined),
                text: ("Draf")
            ),
            buildRow(
                icons: Icon(Icons.mail_outlined),
                text: ("Semua email")
            ),
            buildRow(
                icons: Icon(Icons.report_gmailerrorred),
                text: ("Spam")
            )
        ],
      ),
    ),
    );
  }

  Widget buildRow({required Icon icons, required String text}) {
    return Row(
            children: [
              icons,
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0, top: 8.0),
                child: Text(text),
            )
          ],
        );
  }
  }
