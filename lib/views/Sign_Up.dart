// ignore: file_names
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lewrupay/config/palette.dart';
import 'package:lewrupay/firebase/firebase_auth.dart';
import 'package:lewrupay/models/user_model.dart';
import 'package:lewrupay/routes/route.dart';
import 'package:lewrupay/widgets/custom_button.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var formKey = GlobalKey<FormState>();
  var email = TextEditingController();
  var password = TextEditingController();
  var nomPrenom = TextEditingController();
  var dateNaiss = TextEditingController();
  var confirmPassword = TextEditingController();
  var firebaseAuth = FirebaseAuthentification();
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
                "Créer un compte pour gérer vos paiements et vos finances.",
                style: TextStyle(fontSize: 15, color: Palette.subtitle),
              ),
              const SizedBox(height: 30),
              Form(
                key: formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: nomPrenom,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: "Nom et prenom",
                        prefixIcon: Icon(Icons.person, color: Palette.primary),
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
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Veuillez entrer votre nom et prenom";
                        }

                        return null;
                      },
                    ),

                    const SizedBox(height: 20),

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
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Veuillez entrer votre email";
                        }
                        if (!isValidEmail(value)) {
                          return "Veuillez entrer un email valide";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: dateNaiss,
                      keyboardType: TextInputType.datetime,
                      decoration: InputDecoration(
                        labelText: "Date de naissance",
                        prefixIcon: Icon(
                          Icons.date_range,
                          color: Palette.primary,
                        ),
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
                      controller: password,
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
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Veuillez entrer votre mot de passe";
                        }
                        if (value.length < 6) {
                          return "Le mot de passe doit contenir au moins 6 caractères";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: confirmPassword,
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Confirmer le mot de passe",
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
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Veuillez confirmer votre mot de passe";
                        }
                        if (value != password.text) {
                          return "Les mots de passe ne correspondent pas";
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              CustomButton(
                text: "S'inscrire",
                onPressed: () {
                  signUp();
                },
                isPrimary: true,
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      Get.toNamed(NameRoute.signIn);
                    },
                    child: Text(
                      "Vous avez déjà un compte ?",
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

  signUp() {
    if (formKey.currentState!.validate()) {
      dialogue();

      var user = UserModel(
        idUser: "",
        email: email.text,
        nomPrenom: nomPrenom.text,
        dateNaiss: dateNaiss.text,
      );
      firebaseAuth.signup(
        user: user,
        password: password.text,
        onSucess: () {
          Get.back();
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text("inscription reussie")));
          Get.offAndToNamed(NameRoute.home);
        },
        onError: () {
          Get.back();
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text("error")));
          Get.offAndToNamed(NameRoute.home);
        },
      );
    }
  }

  bool isValidEmail(String email) {
    final emailRegex = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );
    return emailRegex.hasMatch(email);
  }

  dialogue() {
    showDialog(context: context, builder:(builder) {
      return Center(child: CircularProgressIndicator());
    });
  }
}
