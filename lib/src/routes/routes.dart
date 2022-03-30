import 'package:appmonkey/src/pages/Home_Page.dart';
import 'package:flutter/cupertino.dart';

import '../pages/login_page.dart';

final routes = <String, WidgetBuilder>{
  '/':(BuildContext context) => const HomePage(),
  '/login': (BuildContext context) => const LoginPage(),
};