import 'package:appmonkey/src/routes/routes.dart';
import 'package:flutter/material.dart';

import 'home.dart';



void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Monkey Delivery',
    initialRoute: '/Notifications',
    routes: routes,
    theme: ThemeData(
      primaryColor: const Color.fromRGBO(252, 96, 17, 1.0),
      colorScheme: ColorScheme.fromSwatch()
          .copyWith(secondary: const Color.fromRGBO(74, 75, 77, 1.0)),
    ),
    home: const Home(),
  ));
}




