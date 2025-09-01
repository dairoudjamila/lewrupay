import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lewrupay/views/congrat.dart';

class Sign_Up extends StatelessWidget {
  const Sign_Up({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Text("Sign up for a secure transaction using LewruPay"),
      ),
    );
  }
}
