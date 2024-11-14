import 'package:flutter/material.dart';
import 'package:wisata_candi/models/candi.dart';

class ItemCard extends StatelessWidget {
  //TODO 1 : Deklarasi variable
  final Candi candi;
  const ItemCard({super.key, required this.candi});

  @override
  Widget build(BuildContext context) {
    //TODO 2 :
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      margin: EdgeInsets.all(4),
      elevation: 1,
      child: Column(
        children: [
          //TODO 3 : ImagAe Widget
          Expanded(
            //biar ga overflow
            child: ClipRect(
              child: Image.asset(
                candi.imageAsset,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          //TODO 4 : Text
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 8),
            child: Text(
              candi.name,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
//todo 5 : text
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 8),
            child: Text(
              candi.type,
              style: TextStyle(fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}
