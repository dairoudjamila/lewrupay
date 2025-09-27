import 'package:get/get.dart';
import 'package:lewrupay/views/data.dart';
import 'package:lewrupay/views/Home.dart';
import 'package:lewrupay/views/receive.dart';
import 'package:lewrupay/views/Send.dart';
import 'package:lewrupay/views/credit.dart';
import 'package:lewrupay/views/forget_password.dart';
import 'package:lewrupay/views/onboarding.dart';
import 'package:lewrupay/views/sign_in.dart';
import 'package:lewrupay/views/sign_up.dart';
import 'package:lewrupay/views/splash.dart';

class NameRoute {
  static String initial = "/";
  static String onboarding = "/onboarding";
  static String home = "/home";
  static String signIn = "/sign_in";
  static String signUp = "/sign_up";
  static String forgetPassword = "/forget_password";
  static String send = "/send";
  static String receive = "/receive";
  static String data = "/data";
  static String credit = "/credit";
}

class RoutePage {
  static List<GetPage> pages = [
    GetPage(name: NameRoute.initial, page: () => const Splash()),
    GetPage(name: NameRoute.onboarding, page: () => const Onboarding()),
    GetPage(name: NameRoute.home, page: () => const Home()),
    GetPage(name: NameRoute.signIn, page: () => const SignIn()),
    GetPage(name: NameRoute.signUp, page: () => const SignUp()),
    GetPage(name: NameRoute.forgetPassword, page: () => const ForgetPassword()),
    GetPage(name: NameRoute.send, page: () => const Send()),
    GetPage(name: NameRoute.receive, page: () => const Receive()),
    GetPage(name: NameRoute.data, page: () => const Data()),
    GetPage(name: NameRoute.credit, page: () => const Credit()),
  ];
}
