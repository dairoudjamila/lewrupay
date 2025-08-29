import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lewrupay/views/Home.dart';

class Onboarding2 extends StatelessWidget {
  const Onboarding2 ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: 
      SingleChildScrollView(
        
        child: 
          Padding(
            padding: EdgeInsets.all(50.0,),
           child: Column(

             children: [

          Center( 
            child:SizedBox(

            width: 550,
            height: 300,
          
            child: Image.asset("image/onboarding2 photo.png")
          
           )
            ),
            SizedBox(height: 90,),
           Text(
            "LewruPay is a mobile digital finance",style: TextStyle(fontSize: 20,color: Colors.blue),textAlign: TextAlign.center,
           ),

             SizedBox(height: 150),
             Row(
               mainAxisAlignment: MainAxisAlignment.end,
                children: [
               

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white
                  ),
                  
                  
                  
                  
                  onPressed: () {
                  Get.to( () =>Home());
                }, 
                child: Text("start",style: TextStyle(fontSize: 20),)
                )
              ],
            )

             ]
           )
          )
      )




    );
  }
}


