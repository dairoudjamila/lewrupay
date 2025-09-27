import 'package:flutter/material.dart';
import 'package:lewrupay/views/Sign%20up%20credit%202.dart';

class Singupcredit extends StatelessWidget {
  const Singupcredit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(50.0),
            child: Column(
              children: [
                // Image
                Center(
                  child: Container(
                    width: 100,
                    height: 100,
                    child: Image.asset(
                      "assets/images/pic.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Text(
                  'Sign Up Via E-mail',
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 50),

                // Button
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Signupcredit2()),
                    );
                  },
                  child: Text('Get Started'),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
