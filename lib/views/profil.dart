import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lewrupay/views/Personal_Details.dart';
import 'package:lewrupay/views/Account_Details.dart';
import 'package:lewrupay/views/Send.dart';

class Profil extends StatefulWidget {
  const Profil({super.key});

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Row(
              children: [
                const Text(
                  "Profile",
                  style: TextStyle(fontSize: 20),
                  selectionColor: Colors.black,
                ),
              ],
            ),
            Center(
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  const CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage("images/moon phone.png"),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.camera_alt, color: Colors.white),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 30),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(
                leading: const Icon(Icons.person),
                title: const Text("Personal details"),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  Get.to(() => Personal_Details());
                },
              ),
            ),
            SizedBox(height: 30),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(
                leading: const Icon(Icons.account_balance),
                title: const Text("Account details"),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  Get.to(() => Account_Details());
                },
              ),
            ),
            SizedBox(height: 30),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(
                leading: const Icon(Icons.group),
                title: const Text("Invite friends to Lewrupay"),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {},
              ),
            ),

            const SizedBox(height: 25),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue,
              ),

              onPressed: () {
                Get.to(() => ());
              },
              child: const Text('log out'),
            ),
          ],
        ),
      ),
    );
  }
}
