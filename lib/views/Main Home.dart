import 'package:flutter/material.dart';
import 'package:lewrupay/views/History.dart';
import 'package:lewrupay/views/new_home.dart';
import 'package:lewrupay/views/profil.dart';

class MainHome extends StatefulWidget {
  const MainHome({super.key});

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  int indexPage = 0;
  List listPages = [NewHome(), Profil(), History()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexPage,
        onTap: (value) {
          indexPage = value;
          setState(() {});
        },

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.white),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.white),
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history, color: Colors.white),
            label: "History",
          ),
        ],
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
      ),

      backgroundColor: const Color(0xFFF5F7FA),
      body:  listPages[indexPage]
      // bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

}
