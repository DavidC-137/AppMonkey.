import 'package:appmonkey/home.dart';
import 'package:appmonkey/src/pages/Home_Page.dart';
import 'package:appmonkey/src/pages/aboutUs.dart';
import 'package:appmonkey/src/pages/carrusel1.dart';
import 'package:appmonkey/src/pages/checkout.dart';
import 'package:appmonkey/src/pages/desserts.dart';
import 'package:appmonkey/src/pages/inbox.dart';
import 'package:appmonkey/src/pages/latestOffers.dart';
import 'package:appmonkey/src/pages/more.dart';
import 'package:appmonkey/src/pages/new_Password.dart';
import 'package:appmonkey/src/pages/notifications.dart';
import 'package:appmonkey/src/pages/profile.dart';
import 'package:appmonkey/src/pages/resetPassword.dart';
import 'package:appmonkey/src/pages/signUp.dart';
import 'package:flutter/cupertino.dart';
import '../pages/addCreditCard.dart';
import '../pages/carrusel2.dart';
import '../pages/carrusel3.dart';
import '../pages/changeAddress.dart';
import '../pages/logearPage.dart';
import '../pages/login_page.dart';
import '../pages/recive_OTP.dart';

final routes = <String, WidgetBuilder>{
  '/Home':(BuildContext context) => const HomePage(),
  '/login': (BuildContext context) => const LoginPage(),
  '/reciveOTP': (BuildContext context) => const reciveOTP(),
  '/newPassword': (BuildContext context) => const newPassword(),
  '/Profile':(BuildContext context) => const Profile(),
  '/Carrusel1':(BuildContext context) => const Carrusel1(),
  '/Carrusel2':(BuildContext context) => const Carrusel2(),
  '/Carrusel3':(BuildContext context) => const Carrusel3(),
  '/ResetPassword':(BuildContext context) => const ResetPassword(),
  '/LogPage':(BuildContext context) => const LogearPage(),
  '/SignUp':(BuildContext context) => const SignUpPage(),
  '/Desserts':(BuildContext context) => const Desserts(),
  '/LatestOffers':(BuildContext context) => const LatestOffers(),
  '/Inbox':(BuildContext context) => const Inbox(),
  '/home':(BuildContext context) => const Home(),
  '/AboutUs':(BuildContext context) => const AboutUs(),
  '/Notifications':(BuildContext context) => const Notifications(),
  '/ChangeAddress': (BuildContext context) => const ChangeAddress(),
  '/AddCreditCard': (BuildContext context) => const AddCreditCard(),
  '/Checkout': (BuildContext context) => const Checkout(),
  '/More': (BuildContext context) => const More(),
};