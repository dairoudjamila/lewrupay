import 'package:flutter/material.dart';
import 'package:lewrupay/views/Sign_Up.dart';

class Sign_up_credit extends StatelessWidget {
  const Sign_up_credit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                SizedBox(height: 50),

                // Image
                Center(
                  child: Container(
                    width: 100,
                    height: 100,
                    child: Image.asset("assets/images", fit: BoxFit.cover),
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
                      MaterialPageRoute(builder: (context) => Sign_Up())
                    );
                  },
                  child: Text('Get Started'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
