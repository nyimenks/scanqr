import 'package:flutter/material.dart';

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
          title: Center(
            child: Text(
              'Home Page',
              style: TextStyle(color: Colors.white),
            ),
          ),
          backgroundColor: Color(0xFF328062),
        ),
        body: Column(
          children: [
            Text("Hello world"),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Masukkan Nama",
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                      width: 1,
                      color: Color(0xFF32423D),
                    ))),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Simpan"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF328062),
              ),
            )
          ],
        ));
  }
}
