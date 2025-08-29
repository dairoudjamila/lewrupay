import 'package:flutter/material.dart';
class History extends StatelessWidget {
  const History ({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(


       appBar: AppBar(
        title: const
        Text("History"),
      ),


      bottomNavigationBar: BottomNavigationBar(items: 
      const[
        BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.white),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.white),label: "profile"),
        BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.white),label: "History"),
      ],
      backgroundColor:Colors.blue,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.black
      ),


    );
  }
}