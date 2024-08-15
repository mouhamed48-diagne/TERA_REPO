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
      bottomNavigationBar: navbar(pageIndex: 0),
      body: SingleChildScrollView(),
    );
  }
}
