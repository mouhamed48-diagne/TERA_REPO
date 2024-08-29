import 'package:flutter/material.dart';
import 'package:tera/ajoutStock.dart';
import 'package:tera/home.dart';
import 'package:tera/home_page_admin.dart';
import 'package:tera/stock.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AjoutStock(),
    );
  }
}
