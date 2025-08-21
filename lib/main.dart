import 'package:flutter/material.dart';
import 'package:lewrupay/views/onboarding1.dart';
import 'package:lewrupay/views/onboarding2.dart';
import 'package:lewrupay/views/splash.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    GetMaterialApp(
      home: Splash(),
      title: "lewrupay",

      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => const Splash()),

        GetPage(name: Namepage.onboarding1, page: () => const Onboarding1()),

        GetPage(name: '/Onboarding2', page: () => const Onboarding2()),
      ],
    ),
  );
}
