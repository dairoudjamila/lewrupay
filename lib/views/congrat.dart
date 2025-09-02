import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lewrupay/views/phone number.dart';

class Congrat extends StatelessWidget {
  const Congrat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(50.0),
          child: Column(
            children: [
              Center(
                child: SizedBox(
                  width: 550,
                  height: 300,

                  child: Image.asset("images/moon phone.png"),
                ),
              ),
              SizedBox(height: 90),
              Text(
                "Congratulations !!",
                style: TextStyle(fontSize: 20, color: Colors.blue),
                textAlign: TextAlign.center,
              ),

              // Center(
              //   child: SizedBox(
              //     width: 550,
              //     height: 300,

              //     child: Image.asset("images/moon phone.png"),
              //   ),
              // ),
              // SizedBox(height: 90),
              // Text(
              //   "Congratulations !!",
              //   style: TextStyle(fontSize: 20, color: Colors.blue),
              //   textAlign: TextAlign.center,
              // ),
              SizedBox(height: 150),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                    ),

                    onPressed: () {
                      Get.to(() => Phonenumber());
                    },
                    child: Text("Get started", style: TextStyle(fontSize: 20)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
