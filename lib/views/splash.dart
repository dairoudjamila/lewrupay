import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lewrupay/config/palette.dart';
import 'package:lewrupay/routes/route.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
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
              style: TextStyle(color: Palette.primary, fontSize: 34),
            ),
            Spacer(flex: 2),
            CircularProgressIndicator(),
            Spacer(flex: 1),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    initNextPage();
  }

  void initNextPage() async {
    await Future.delayed(const Duration(seconds: 3));
    Get.offAllNamed(NameRoute.onboarding);
  }
}
