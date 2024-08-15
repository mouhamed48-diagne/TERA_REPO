import 'package:flutter/material.dart';
import 'package:tera/navbar.dart';

class entrepots extends StatefulWidget {
  const entrepots({super.key});

  @override
  State<entrepots> createState() => _entrepotsState();
}

class _entrepotsState extends State<entrepots> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        bottomNavigationBar: navbar(pageIndex: 0),
        body: SingleChildScrollView(),
      ),
    );
  }
}
