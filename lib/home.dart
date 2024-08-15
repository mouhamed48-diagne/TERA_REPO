import 'package:flutter/material.dart';
import 'package:tera/navbar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        bottomNavigationBar: navbar(pageIndex: 1),
        body: SingleChildScrollView(),
      ),
    );
  }
}
