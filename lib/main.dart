import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:lewrupay/constants/constant.dart';
import 'package:lewrupay/firebase_options.dart';
import 'package:lewrupay/routes/route.dart';
import 'package:lewrupay/views/splash.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
      title: Constant.nameApp,
      initialRoute: NameRoute.initial,
      getPages: RoutePage.pages,
    ),
  );
}
