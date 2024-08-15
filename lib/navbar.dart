import 'package:flutter/material.dart';
import 'package:tera/constants.dart';
import 'package:tera/entrepots.dart';
import 'package:tera/functions.dart';
import 'package:tera/home.dart';
import 'package:tera/shop.dart';

class navbar extends StatefulWidget {
  const navbar({super.key, required this.pageIndex});
  final int pageIndex;
  @override
  State<navbar> createState() => _navbarState();
}

class _navbarState extends State<navbar> {
  List pageList = [entrepots(), Home(), shop()];

  void _onSelected(newIndex) {
    if (Navigator.of(context).canPop()) {
      Navigator.pop(context);
    }
    changerPage(context, pageList[newIndex]);
  }

  NavigationDestination _destination(
      String imagePath, String label, double width) {
    return NavigationDestination(
      icon: Image.asset(imagePath, width: width, color: jauneClair),
      selectedIcon: Image.asset(
        imagePath,
        width: width,
        color: orange,
      ),
      label: label,
    );
  }

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      indicatorColor: Colors.white,
      selectedIndex: widget.pageIndex,
      onDestinationSelected: _onSelected,
      destinations: [
        _destination('assets/augmenter.png', '', 30),
        _destination('assets/cacahuete.png', '', 30),
        _destination('assets/decrease.png', '', 30),
      ],
    );
  }
}
