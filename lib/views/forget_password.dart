import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lewrupay/config/palette.dart';
import 'package:lewrupay/widgets/custom_button.dart';

import '../routes/route.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Réinitialisez votre mot de passe",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Palette.primary,
                  ),
                ),
                Text(
                  "Pour continuer, indiquez votre email afin de recevoir un code ou un lien sécurisé de réinitialisation.",
                  style: TextStyle(fontSize: 15, color: Palette.subtitle),
                ),
                const SizedBox(height: 30),
                Form(
                  child: Column(
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: "Email",
                          prefixIcon: Icon(Icons.email, color: Palette.primary),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Palette.primary,
                              width: 2.5,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Palette.primary,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 30),
                CustomButton(
                  text: "Continuer",
                  onPressed: () {
                    Get.toNamed(NameRoute.signIn);
                  },
                  isPrimary: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
