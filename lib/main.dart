import 'package:flutter/material.dart';
import 'package:new_app/pages/auth_screen/login.dart';
import 'package:new_app/pages/first_page.dart';
import 'package:new_app/pages/last_page.dart';
import 'package:new_app/splits_all_screen/splits_screen.dart';

import 'pages/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: LoginScreen(),
      //home: SplitsScreen(),
    );
  }
}


