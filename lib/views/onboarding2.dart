import 'package:flutter/material.dart';
import 'package:get/get.dart';
<<<<<<< HEAD
import 'package:lewrupay/views/Sign_Up.dart';
=======
import 'package:lewrupay/views/Home.dart';
>>>>>>> 54784f95b9b39e8a72cbe9ad28dfa19da32accf6

class Onboarding2 extends StatelessWidget {
  const Onboarding2({super.key});

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

                  child: Image.asset("images/onboarding2 photo.png"),
                ),
              ),
              SizedBox(height: 90),
              Text(
                "LewruPay is a mobile digital finance",
                style: TextStyle(fontSize: 20, color: Colors.blue),
                textAlign: TextAlign.center,
              ),

              SizedBox(height: 150),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                    ),

                    onPressed: () {
                      Get.to(() => LewruPayApp());
                    },
                    child: Text("start", style: TextStyle(fontSize: 20)),
                  ),
<<<<<<< HEAD
                  
                  
                  
                  
                  onPressed: () {
                  Get.to( () =>Sign_Up());
                }, 
                child: Text("start",style: TextStyle(fontSize: 20),)
                )
              ],
            )

             ]
           )
          )
      )




=======
                ],
              ),
            ],
          ),
        ),
      ),
>>>>>>> 54784f95b9b39e8a72cbe9ad28dfa19da32accf6
    );
  }
}


