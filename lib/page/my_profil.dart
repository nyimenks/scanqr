import 'package:flutter/material.dart';

class MyProfil extends StatefulWidget {
  const MyProfil({super.key});

  @override
  State<MyProfil> createState() => _MyProfilState();
}

class _MyProfilState extends State<MyProfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Profile", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.grey,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Center(
                child: Image.asset('assets/images/profil.png',
                    width: 150, height: 150)),
          ),
          Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Card(
                    clipBehavior: Clip.hardEdge,
                    child: SizedBox(
                        width: 350,
                        height: 250,
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 3),
                          child: ListView(
                            children: [
                              buildListTile(
                                title: Text(": Habibi Zakly Khairullah",
                                    style: TextStyle(fontSize: 12)),
                                leading: Text("Nama          ",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold)),
                              ),
                              buildListTile(
                                title: Text(": +62 819-5237-1113",
                                    style: TextStyle(fontSize: 12)),
                                leading: Text("Nomor\nHandphone",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold)),
                              ),
                              buildListTile(
                                title: Text(": habibizakly47@gmail.com",
                                    style: TextStyle(fontSize: 12)),
                                leading: Text("Email          ",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold)),
                              ),
                              buildListTile(
                                title: Text(
                                    "  Jl. Perumahan Alam Citra\n: nomor 9, Desa Kudu,\n  Kecamatan Baki",
                                    style: TextStyle(fontSize: 12)),
                                leading: Text("Alamat       ",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold)),
                              ),
                              buildListTile(
                                title: Text(
                                    ": Bisa ngoding tanpa mengalami\n  logika buntu :D",
                                    style: TextStyle(fontSize: 12)),
                                leading: Text("Cita-cita     ",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ],
                          ),
                        )),
                  ),
                ),
                Column(
                  children: [
                    Center(
                      child: Card(
                          clipBehavior: Clip.hardEdge,
                          child: SizedBox(
                            width: 350,
                            height: 290,
                            child: ListView(
                              children: [
                                Column(
                                  children: [
                                    buildPadding(
                                      text: Text("Riwayat Pendidikan",
                                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                                    ),buildPadding(
                                      text: Text("\nSekolah Dasar",
                                          style: TextStyle(fontSize: 15)),
                                    ),buildPadding(
                                      text: Text("SDS Islam Plus Al-Manshur Banjarbaru",
                                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
                                    ),buildPadding(
                                      text: Text("Tahun 2013-2019",
                                          style: TextStyle(fontSize: 13, color: Colors.grey)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 20),
                                      child: Divider(),
                                    ),buildPadding(
                                      text: Text("\nSekolah Menengah Pertama",
                                          style: TextStyle(fontSize: 15)),
                                    ),buildPadding(
                                      text: Text("SMPN 5 Banjarbaru",
                                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
                                    ),buildPadding(
                                      text: Text("Tahun 2019-2022",
                                          style: TextStyle(fontSize: 13, color: Colors.grey)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 20),
                                      child: Divider(),
                                    ),buildPadding(
                                      text: Text("\nSekolah Menengah Kejuruan",
                                          style: TextStyle(fontSize: 15)),
                                    ),buildPadding(
                                      text: Text("SMKN 2 Surakarta",
                                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
                                    ),buildPadding(
                                      text: Text("Tahun 2022-2025",
                                          style: TextStyle(fontSize: 13, color: Colors.grey)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 20),
                                      child: Divider(),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildPadding({required text}) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 27),
      child: Row(
        children: [
          text
        ],
      ),
    );
  }

  Widget buildListTile({required title, required leading}) {
    return ListTile(
      title: title,
      leading: Padding(
        padding: EdgeInsets.only(right: 30, left: 10),
        child: leading,
      ),
    );
  }
}
