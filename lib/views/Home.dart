import 'package:flutter/material.dart';
import 'package:gradient_elevated_button/gradient_elevated_button.dart';
import 'package:lewrupay/views/Sign up credit.dart';

class Home extends StatelessWidget {
  const Home ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Spacer(flex: 3),
            Text(
              "LewruPay",

              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            Spacer(),
            const SizedBox(height: 120),
            GradientElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Singupcredit()),
                );
              },
              child: const Text("Start"),
            ),
            Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
  
  
}
