import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Namepage {
  static const onboarding1 = '/onboarding1';
}

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
          Spacer(flex: 3,),
           Text (
            "LewruPay",style:TextStyle
            (color: Colors.blue,fontSize: 34,),),
            Spacer(flex: 2,),
            CircularProgressIndicator(),
            Spacer(flex: 1,)
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
  Get.offAllNamed(Namepage.onboarding1);
  }
}