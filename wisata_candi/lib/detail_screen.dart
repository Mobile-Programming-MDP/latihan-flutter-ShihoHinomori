import 'package:flutter/material.dart';
import 'package:wisata_candi/models/candi.dart';

class DetailScreen extends StatelessWidget {
  final Candi candi;
  const DetailScreen({super.key, required this.candi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    candi.imageAsset,
                    height: 300,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 32,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.deepPurple[100]?.withOpacity(0.8),
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_back),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(candi.name),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.favorite_border))
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.location_on,
                      color: Colors.red,
                    ),
                    const SizedBox(width: 8),
                    const SizedBox(
                      width: 70,
                      child: Text(
                        'Lokasi',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(': ${candi.location}'),
                  ],
                ),
                Row(children: [
                  Icon(
                    Icons.calendar_month,
                    color: Colors.blue,
                  ),
                  const SizedBox(width: 8),
                  const SizedBox(
                    width: 70,
                    child: Text(
                      'Dibangun',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(': ${candi.built}'),
                ]),
                Row(children: [
                  Icon(
                    Icons.house,
                    color: Colors.green,
                  ),
                  const SizedBox(width: 8),
                  const SizedBox(
                    width: 70,
                    child: Text(
                      'Tipe',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(': ${candi.type}')
                ]),
                Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Divider(
                            color: Colors.deepPurple.shade100,
                          ),
                          Text('Deskripsi',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 16,
                          ),
                          SizedBox(),
                          SizedBox(
                            height: 4,
                          ),
                          Text(candi.description),
                        ]))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
