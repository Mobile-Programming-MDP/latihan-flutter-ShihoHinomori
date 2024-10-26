import 'package:flutter/material.dart';

class LatihanScreen extends StatelessWidget {
  const LatihanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latihan UTS"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Text("Informatika", 
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
            ),
            ),
            SizedBox(
              height: 8,
            ),
            Image.asset(
              "images/latihan.png",
              height: 250,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Text("Universitas Multi Data Palembang", 
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
            ),
            Text("Kota Palembang, Prov. Sumatera Selatan", 
            style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
