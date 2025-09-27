import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:lewrupay/config/palette.dart';
import 'package:lewrupay/routes/route.dart';
import 'package:lewrupay/views/Personal_Details.dart';
import 'package:lewrupay/views/Account_Details.dart';
import 'package:lewrupay/widgets/custom_button.dart';

class Profil extends StatefulWidget {
  const Profil({super.key});

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Profile",
          style: TextStyle(fontSize: 20),
          selectionColor: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 150,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(color: Palette.subtitle),
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("images/moon phone.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 130,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.camera_alt, color: Colors.white),
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                          Palette.primary,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 30),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.withValues(alpha: 0.5)),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Column(
                children: [
                  ListTile(
                    leading: const Icon(IconlyLight.profile),
                    title: const Text("Personal details"),
                    trailing: const Icon(IconlyLight.arrow_right_2),
                    onTap: () {
                      Get.to(() => Personal_Details());
                    },
                  ),
                  Divider(),
                  ListTile(
                    leading: const Icon(IconlyLight.work),
                    title: const Text("Account details"),
                    trailing: const Icon(IconlyLight.arrow_right_2),
                    onTap: () {
                      Get.to(() => Account_Details());
                    },
                  ),
                  Divider(),
                  ListTile(
                    leading: const Icon(IconlyLight.user_1),
                    title: const Text("Invite friends to Lewrupay"),
                    trailing: const Icon(IconlyLight.arrow_right_2),
                    onTap: () {},
                  ),
                  Divider(),
                  CustomButton(
                    text: "Log out",
                    onPressed: () {
                      Get.offAllNamed(NameRoute.signIn);
                    },
                    isPrimary: true,
                    color: Colors.red,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
