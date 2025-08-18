import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lewrupay/views/onboarding2.dart';

class Onboarding1 extends StatelessWidget{
  const Onboarding1 ({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(),
    
      body: 
      SingleChildScrollView(
        
        child: 
          Padding(
            padding: EdgeInsets.all(50.0,),
           child: Column(

             children: [

          Center( 
            child:Container(

            width: 550,
            height: 200,
          
            child: Image.asset("image/onboarding phone.png")
          
           )
            ),
             SizedBox(height: 100),
           Text(
            "welcome to LewruPay",style: TextStyle(fontSize: 20,color: Colors.blue),textAlign: TextAlign.center,
           ),

             SizedBox(height: 200),
             Row(
               mainAxisAlignment: MainAxisAlignment.end,
                children: [
               

                ElevatedButton(
                  
                  style: ElevatedButton.styleFrom(

                  backgroundColor: const Color.fromARGB(255, 33, 150, 243),
                  foregroundColor: Colors.white
                  ),
                  
                  onPressed: () {
                  Get.to( () =>Onboarding2());
                }, 
                child: Text("Next")
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