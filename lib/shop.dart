import 'package:flutter/material.dart';

import 'navbar.dart';

class shop extends StatefulWidget {
  const shop({super.key});

  @override
  State<shop> createState() => _shopState();
}

class _shopState extends State<shop> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        bottomNavigationBar: navbar(pageIndex: 2),
        body: SingleChildScrollView(),
      ),
    );
  }
}
