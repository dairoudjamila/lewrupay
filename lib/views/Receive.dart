import 'package:flutter/material.dart';
import 'package:lewrupay/views/Data.dart';
import 'package:get/get.dart';

class Receive extends StatefulWidget {
  const Receive({super.key});

  @override
  State<Receive> createState() => _ReceiveState();
}

class _ReceiveState extends State<Receive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Receive")),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            child: Column(
              children: [
                Text("Receiver's phone number"),
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.add_to_home_screen_sharp),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    hintText: 'Enter a number',
                  ),
                ),
                SizedBox(height: 12),
                Text("Amount"),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    hintText: 'Enter a number',
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
            Get.to( () =>Data () );
          },
         child: const
         Text('Recharge now'),
         
         )





              ],
            ),
          ),
        ),
      ),
    );
  }
}
