import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lewrupay/config/palette.dart';
import 'package:lewrupay/routes/route.dart';
import 'package:lewrupay/views/onboarding2.dart';
import 'package:lewrupay/widgets/custom_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    var pageController = PageController();
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: pageController,
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("images/onboarding phone.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                      Text(
                        "Welcome to LewruPay",
                        style: TextStyle(
                          fontSize: 20,
                          color: Palette.primary,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "LewruPay is a mobile digital finance to Connecting People and Possibilities Through Payments ",
                        style: TextStyle(
                          fontSize: 15,
                          color: Palette.subtitle,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Expanded(
                            child: CustomButton(
                              text: "Skip",
                              onPressed: () {
                                Get.offAndToNamed(NameRoute.signIn);
                              },
                              isPrimary: false,
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: CustomButton(
                              text: "Next",
                              onPressed: () {
                                pageController.nextPage(
                                  duration: const Duration(milliseconds: 100),
                                  curve: Curves.easeIn,
                                );
                              },
                              isPrimary: true,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("images/onboarding2 photo.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                      Text(
                        "Innovative & Tech-Driven",
                        style: TextStyle(
                          fontSize: 20,
                          color: Palette.primary,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "LewruPay is a mobile fintech that turns transactions into smart experiences. ",
                        style: TextStyle(
                          fontSize: 15,
                          color: Palette.subtitle,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Expanded(
                            child: CustomButton(
                              text: "Previous",
                              onPressed: () {
                                pageController.previousPage(
                                  duration: const Duration(milliseconds: 100),
                                  curve: Curves.easeIn,
                                );
                              },
                              isPrimary: false,
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: CustomButton(
                              text: "Finish",
                              onPressed: () {
                                Get.offAndToNamed(NameRoute.signIn);
                              },
                              isPrimary: true,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          SmoothPageIndicator(
            controller: pageController,
            count: 2,
            axisDirection: Axis.horizontal,
            effect: WormEffect(
              dotWidth: 10,
              dotHeight: 10,
              dotColor: Colors.grey,
              activeDotColor: Palette.primary,
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
