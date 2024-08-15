import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

void changerPage(BuildContext context, Widget destination) {
  Navigator.push(
    context,
    PageTransition(
      type: PageTransitionType.fade,
      child: destination,
      duration: const Duration(milliseconds: 150),
    ),
  );
}
