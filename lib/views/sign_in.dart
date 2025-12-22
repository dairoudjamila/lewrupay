import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:http/http.dart';
import 'package:lewrupay/config/palette.dart';
import 'package:lewrupay/firebase/firebase_auth.dart';
import 'package:lewrupay/routes/route.dart';
import 'package:lewrupay/widgets/custom_button.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  var email= TextEditingController();
  var mdp=TextEditingController();
  var formkey= GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Bienvenue sur LewruPay",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Palette.primary,
                ),
              ),
              Text(
                "Une seule connexion pour gérer vos paiements et vos finances.",
                style: TextStyle(fontSize: 15, color: Palette.subtitle),
              ),
              const SizedBox(height: 30),
              Form(
                key: formkey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: email,
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
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: mdp,
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Mot de passe",
                        prefixIcon: Icon(Icons.lock, color: Palette.primary),
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
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Get.toNamed(NameRoute.forgetPassword);
                    },
                    child: Text(
                      "Mot de passe oublié ?",
                      style: TextStyle(color: Palette.primary),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              CustomButton(
                text: "Se connecter",
                onPressed: () {
                 login();
                },
                isPrimary: true,
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      Get.toNamed(NameRoute.signUp);
                    },
                    child: Text(
                      "Vous n'avez pas de compte ?",
                      style: TextStyle(color: Palette.primary),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  var auth = FirebaseAuthentification();
  login(){
    dialogue();
auth.login(email: email.text, password: mdp.text, callBack: (){
  Get.back();
  Get.toNamed(NameRoute.home);
}, onError: (){
  Get.back();
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text("email or password incorect")));
});
  }
  dialogue() {
    showDialog(context: context, builder:(builder) {
      return Center(child: CircularProgressIndicator());
    });
  }
}
