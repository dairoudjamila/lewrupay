import 'package:flutter/material.dart';
import 'package:lewrupay/views/Sign%20up%20credit%202.dart';


class Singupcredit extends StatelessWidget {
  const Singupcredit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(height: 20),
              Expanded(child: SizedBox()),

              // Image
              Center(
                child: Container(
                  width: 300,
                  child: Image.asset("images/photo.png", fit: BoxFit.cover),
                ),
              ),
              Text(
                'Sign Up Via E-mail',
                style: TextStyle(fontSize: 24),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 50),
              Expanded(child: SizedBox()),
              // Button
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
<<<<<<< HEAD
                    MaterialPageRoute(builder: (context) => Signupcredit2 () ),
=======
                    MaterialPageRoute(builder: (context) => Onboarding2()),
>>>>>>> e900ebb9c0d204109ff4a3e86f02aeab99aac765
                  );
                },
                child: Text('Get Started'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
