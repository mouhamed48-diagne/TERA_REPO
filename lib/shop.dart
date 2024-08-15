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
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () => Scaffold.of(context).openDrawer(),
              icon: Icon(
                Icons.menu,
                size: 35,
                color: Colors.black,
              ),
            );
          },
        ),
        actions: [
          Builder(
            builder: (context) {
              return IconButton(
                onPressed: () => Scaffold.of(context).openEndDrawer(),
                icon: Icon(
                  Icons.notifications,
                  size: 35,
                  color: Colors.black,
                ),
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: navbar(pageIndex: 2),
      body: SingleChildScrollView(),
    );
  }
}
