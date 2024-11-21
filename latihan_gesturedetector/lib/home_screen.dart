import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

String actionLabel = "Belum ada aksi";

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Interaction")
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    actionLabel = 'Pengguna melakukan tap';
                  });
                },
                onDoubleTap: (){
                  setState(() {
                    actionLabel = 'Pengguna melakukan tap';
                  });
                },
              )
            ],
          ),
        ));
  }
}
