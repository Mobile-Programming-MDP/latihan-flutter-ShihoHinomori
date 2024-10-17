import 'package:flutter/material.dart';

class GaleriFoto extends StatelessWidget {
  const GaleriFoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Galeri Foto",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        crossAxisAlignment:
            CrossAxisAlignment.stretch, // Mengisi lebar secara penuh
        children: [
          Image.network(
            "https://picsum.photos/300/200.jpg",
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("Pemandangan Sumatera Selatan")],
          ),
          const Divider(
            // Garis pemisah (header)
            color: Colors.grey, // Warna garis
            thickness: 2, // Ketebalan garis
            indent: 20, // Margin dari kiri
            endIndent: 20, // Margin dari kanan
          ),
          const Row(children: [
            Icon(
              Icons.location_pin,
              color: Colors.red,
            ),
            Text("Lokasi: Palembang, Sumatera Selatan")
          ]),
          const Row(children: [
            Icon(
              Icons.calendar_month,
              color: Colors.blue,
            ),
            Text("Publikasi: 15 Oktober 2024")
          ]),
          const Divider(
            // Garis pemisah (header)
            color: Colors.grey, // Warna garis
            thickness: 2, // Ketebalan garis
            indent: 20, // Margin dari kiri
            endIndent: 20, // Margin dari kanan
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Deskripsi",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20))
            ],
          ),
          const Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Expanded(
                child: Text(
                    "Palembang City is a mysterious lumber town and titular location"
                    "in Indonesia, in South Sumatera. There is no information "
                    "stating who the inventor of Palembang was, but in an attempt "
                    "to cover village existence was said to be founded by Nathaniel Northwest."
                    "It is also an epicenter for supernatural occurrences"
                    "and paranormal activity.",
                    softWrap: true))
          ]),
        ],
      ),
    );
  }
}
