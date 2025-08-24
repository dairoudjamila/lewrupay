import 'package:flutter/material.dart';

class Phonenumber extends StatelessWidget {
  const Phonenumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Number',
                hintText: 'Enter number',
                prefixIcon: Icon(Icons.numbers),
                border: OutlineInputBorder(),
              ),
              onChanged: (String value) {},
              validator: (value) {
                return value!.isEmpty ? 'Please enter number' : null;
              },
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: MaterialButton(
                minWidth: double.infinity,
                onPressed: () {},
                // ignore: sort_child_properties_last
                child: Text('Send'),
                color: Colors.blue,
                textColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
