import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lewrupay/widgets/custom_button.dart';

class Send extends StatefulWidget {
  const Send({super.key});

  @override
  State<Send> createState() => _SendState();
}

class _SendState extends State<Send> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Send")),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Payers phone number'),
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.add_circle_outline_sharp),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    hintText: 'Enter a number',
                  ),
                ),
                SizedBox(height: 12),
                Text('Beneficiary phone number'),
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.phone),

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    hintText: 'Enter a number',
                  ),
                ),
                SizedBox(height: 12),
                Text('Amount'),
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.attach_money),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    hintText: 'Enter an amount',
                  ),
                ),
                const SizedBox(height: 25),
                CustomButton(text: 'Send', onPressed: () {}, isPrimary: true),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
