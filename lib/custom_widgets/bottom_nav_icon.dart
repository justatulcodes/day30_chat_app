import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

BottomNavigationBarItem customBottomNavigationIcon(
    String iconAddress) {
  return BottomNavigationBarItem(
    icon: SvgPicture.asset(
      "assets/svg/$iconAddress",
    ),
    label: '',
  );
}

BottomNavigationBarItem customBottomNavigationIconData(
    IconData icon) {
  return BottomNavigationBarItem(
    icon: Icon(icon),
    label: '',
  );
}

