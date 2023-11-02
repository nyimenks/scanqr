import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Profile page",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView(
        children: [
          customForm(
            icon:  Icon(Icons.person),
            hintText: "Masukkan nama",
            helperText: "Nama harus sesuai dengan ID Card",

          ),
          customForm(
            icon: Icon(Icons.add_card),
            hintText: "Masukkan NIK",
            helperText: "NIK harus sesuai dengan kartu pelajar"

          ),
          customForm(
            icon: Icon(Icons.mail),
            hintText: "Masukkan email",

          ),
          customForm(
            icon: Icon(Icons.phone),
            hintText: "Masukkan Nomor Telp",

          ),
          customForm(
            icon: Icon(Icons.home_work),
            hintText: "Masukkan Alamat",

          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(130.0, 3.0, 130.0, 3.0),
            child: ElevatedButton(
              onPressed: () {
                Fluttertoast.showToast(
                    msg: "Data tersimpan !!",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER_RIGHT,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.blue,
                    textColor: Colors.white,
                    fontSize: 16.0
                );
              },
              child: Text("Simpan"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget customForm({required Icon icon, required String hintText, String? helperText}) {
    return Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            decoration: InputDecoration(
              helperText: helperText,
                hintText: hintText,
                prefixIcon: icon,
                suffixIcon: Icon(Icons.chevron_right),
                border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Color(0xFF32423D),
                    ))),
          ),
        );
  }
}
