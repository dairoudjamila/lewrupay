import 'package:flutter/material.dart';
import 'package:get/get.dart';



// ignore: camel_case_types
class Personal_Details extends StatelessWidget {
  const Personal_Details ({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const
        Text("Personal Details"),
      ),



   bottomNavigationBar: BottomNavigationBar(items: 
   const
   [
    BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.white,),label: "Home"),
    BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.white,),label: "Profile"),
    BottomNavigationBarItem(icon: Icon(Icons.history,color: Colors.white,),label: "History"),
   ],
   backgroundColor: Colors.blue,
   selectedItemColor: Colors.white,
   unselectedItemColor: Colors.black,
   ),

   body: Padding(padding: const
   EdgeInsets.all(20),
   child: Column(
    children: [
      TextField(decoration: const
      InputDecoration(labelText: "Name")),
      TextField(decoration: const
      InputDecoration(labelText: "Email")),
      TextField(decoration: const
      InputDecoration(labelText: "Phone number")),
      const SizedBox(height: 20),
      ElevatedButton(onPressed: () {
        Get.back();
      },
      child: const Text("Save"),
      )
    ],
   )
   ),


    );
  }
}