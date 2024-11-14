import 'package:flutter/material.dart';
import 'package:wisata_candi/data/candi_data.dart';
import 'package:wisata_candi/detail_screen.dart';
import 'package:wisata_candi/favorite_screen.dart';
import 'package:wisata_candi/home_screen.dart';
import 'package:wisata_candi/profil_screen.dart';
import 'package:wisata_candi/search_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Wisata Candi",
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  //TODO 1 : Deklarasi var
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeScreen(),
    SearchScreen(),
    FavoriteScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO 2 : Body
      body: _children[_currentIndex],
      //TODO 3 : BottomNavigationBar
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.deepOrange[100],
        ),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (Index) {
            setState(() {
              _currentIndex = Index;
            });
          },
          selectedItemColor: Colors.deepPurple,
          unselectedItemColor: Colors.deepPurple[100],
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Colors.deepPurple),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.search, color: Colors.deepPurple),
                label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border, color: Colors.red),
                label: "Favorite"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person, color: Colors.deepOrange),
                label: "Profile"),
          ],
        ),
        //TODO 4 : child theme
      ),
    );
  }
}
