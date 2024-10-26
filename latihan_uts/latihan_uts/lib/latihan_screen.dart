import 'package:flutter/material.dart';

class LatihanScreen extends StatelessWidget {
  const LatihanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latihan UTS"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  "Informatika",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Image.asset(
                "images/latihan.jpg",
                height: 250,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Universitas Multi Data Palembang",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
              ),
              Text(
                "Kota Palembang, Prov. Sumatera Selatan",
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 8,
              ),
              //area container merah (informasi detail)
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.red[900],
                ),
                child: const Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    children: [
                      //ToDo : baris berisi info
                      Row(
                        children: [
                          //kiri = status dan akreditasi
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Status",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "Aktif",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "Akreditasi",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "Unggul",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          //kanan = tgl berdiri dan jumlah mhs
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Tanggal Berdiri",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "9 April 20221",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  "Jumlah Mahasiswa",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "5000",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      //ToDo : Baris berisi kontak
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //telp: icon+text
                          Expanded(
                              child: Row(
                            children: [
                              Icon(
                                Icons.phone,
                                color: Colors.white,
                              ),
                              SizedBox(width: 4),
                              Text(
                                "0812-7110-3306",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          )),
                          //email : icon + text
                          Expanded(
                              child: Row(
                            children: [
                              Icon(
                                Icons.email,
                                color: Colors.white,
                              ),
                              SizedBox(width: 4),
                              Text(
                                "kuliah@mdp.ac.id",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          )),
                          //
                          Expanded(
                              child: Row(
                            children: [
                              Icon(
                                Icons.phone,
                                color: Colors.white,
                              ),
                              SizedBox(width: 4),
                              Text(
                                "0812-7110-3306",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          )),
                          //akun medsos
                          Expanded(
                              child: Row(
                            children: [
                              Icon(
                                Icons.laptop,
                                color: Colors.white,
                              ),
                              Text(
                                "@UniversitasMdp",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          )),
                          //website
                          Expanded(
                              child: Row(
                            children: [
                              Icon(
                                Icons.link,
                                color: Colors.white,
                              ),
                              Text(
                                "mdp.ac.id",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          )),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
