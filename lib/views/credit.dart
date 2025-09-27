import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lewrupay/config/palette.dart';
import 'package:lewrupay/widgets/custom_button.dart';

class Credit extends StatefulWidget {
  const Credit({super.key});

  @override
  State<Credit> createState() => CreditState();
}

class CreditState extends State<Credit> {
  String _selectedValue = "Orange Money";
  final List<String> _options = ['Orange Money', 'MTN Mobile Money'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Credit")),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Phone number"),
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.add_ic_call_sharp),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    hintText: 'Enter a number',
                  ),
                ),
                SizedBox(height: 12),
                Text("amount"),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    hintText: 'Enter amount',
                  ),
                ),
                SizedBox(height: 12),
                Text('Payment Method'),
                DropdownButtonFormField<String>(
                  value: _selectedValue,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.arrow_drop_down_circle),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: BorderSide(
                        color: Palette.primary,
                        width: 2.0,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: BorderSide(color: Colors.grey, width: 1.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: BorderSide(
                        color: Palette.primary,
                        width: 2.0,
                      ),
                    ),
                  ),
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedValue = newValue!;
                    });
                  },
                  items:
                      _options.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                ),

                const SizedBox(height: 25),
                CustomButton(
                  text: 'Activate now',
                  onPressed: () {},
                  isPrimary: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
