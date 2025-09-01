import 'package:flutter/material.dart';

import 'package:get/get.dart';

class Credit extends StatefulWidget {
  const Credit ({super.key});

  @override
  State<Credit> createState() => CreditState();
}

class CreditState extends State<Credit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Credit")),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            child: Column(
              children: [
                Text("Phone number"),
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.add_ic_call_sharp),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    hintText: 'Enter a number',
                  ),
                ),
                SizedBox(height: 12),
                Text("amount"),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    hintText: 'Enter amount',
                  ),
                ),
                  SizedBox(height: 12),
                Text('Payment Method'),
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.arrow_drop_down_circle),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    hintText: 'Orange Money',
                  ),
                ),



                const SizedBox(height: 25),
         ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.blue
          ),
          
          onPressed: (){
            Get.to( () => () );
          },
         child: const
         Text('Activate now'),
         
         )





              ],
            ),
          ),
        ),
      ),
    );
  }
}
