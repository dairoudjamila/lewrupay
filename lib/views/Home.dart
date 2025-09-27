import 'package:flutter/material.dart';
import 'package:lewrupay/views/History.dart';
import 'package:lewrupay/views/new_home.dart';
import 'package:lewrupay/views/profil.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int indexPage = 0;
  List listPages = [NewHome(), History(), Profil()];
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
            icon: Icon(Icons.history, color: Colors.white),
            label: "History",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.white),
            label: "Profile",
          ),
        ],
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
      ),

      backgroundColor: const Color(0xFFF5F7FA),
      body: listPages[indexPage],
      // bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }
}
