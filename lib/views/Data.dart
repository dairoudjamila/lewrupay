import 'package:flutter/material.dart';

import 'package:get/get.dart';

class Data extends StatefulWidget {
  const Data ({super.key});

  @override
  State<Data> createState() => _DataState();
}

class _DataState extends State<Data> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Data")),

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
                Text("Data amount"),
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
