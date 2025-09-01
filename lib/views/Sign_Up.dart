// ignore: file_names
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lewrupay/views/congrat.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
<<<<<<< HEAD
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "sign up via e-mail",
                prefixIcon: Icon(Icons.email, color: Colors.blue),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 2.5),
                  borderRadius: BorderRadius.circular(15),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 2),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),

            const SizedBox(height: 25),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue,
              ),

              onPressed: () {
                Get.to(() => Congrat());
              },
              child: const Text('log in'),
            ),
          ],
        ),
=======
      body: SingleChildScrollView(
        child: Text("Sign up for a secure transaction using LewruPay"),
>>>>>>> e900ebb9c0d204109ff4a3e86f02aeab99aac765
      ),
    );
  }
}
