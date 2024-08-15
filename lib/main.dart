// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:tera/home.dart';
import 'package:tera/inscription.dart';
import 'package:tera/login_screen_producteur.dart';

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
    );
  }
}
