// ignore_for_file: file_names

import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget CatalogContainerConstractor(
    {required String iconName,
    required double iconSize,
    required double borderradius}) {
  double containerSize = iconSize + 20;
  return (Container(
      width: containerSize,
      height: containerSize,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(borderradius),
      ),
      child: Image.asset(
        iconName,
        width: iconSize,
        height: iconSize,
      )));
}
