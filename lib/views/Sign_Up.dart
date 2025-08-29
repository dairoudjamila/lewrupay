import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lewrupay/views/congrat.dart';

class Sign_Up extends StatelessWidget {
  const Sign_Up({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   appBar: AppBar(),
   body:Padding(padding: const EdgeInsets.all(40.0),
   child:Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [

      TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          labelText: "sign up via e-mail",
          prefixIcon: Icon(Icons.email,color: Colors.blue,),
          border: OutlineInputBorder(
            borderSide:BorderSide(color: Colors.blue,width: 2.5),
            borderRadius: BorderRadius.circular(15),
          ),
           focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue,width: 2),
            borderRadius: BorderRadius.circular(15)
           )

        ),
      ),

              
         const SizedBox(height: 25),
         ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.blue
          ),
          
          onPressed: (){
            Get.to( () => Congrat() );
          },
         child: const
         Text('log in'),
         
         )
    ],
   )



    
     
    
   

   )
    );
  }
}