import 'dart:ui';

import 'package:flutter/material.dart';

class Constants {
  final lightYellow = const Color(0xFF9D9A47);
  final yellowOne = const Color(0xFFDFAE52);
  final light = const Color(0xFFE8C2BD);
  final darkGreen = const Color(0xFF0F2F04);
  final lightGreen = const Color(0xFF9FEA85);
  final lightRed = const Color(0xFFE68C8C);
  final darkRed = const Color(0xFFDA0928);
  final lightGray = const Color(0xFFE5DFE0);

  Widget TextEdit(BuildContext context, String data) {
    return TextField(
        decoration: new InputDecoration(
        contentPadding: EdgeInsets.all(8),
    enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: yellowOne, width: 1.5
    ),
    borderRadius: BorderRadius.circular(8)
    ),
    focusedBorder:OutlineInputBorder(
    borderSide: BorderSide(color: yellowOne, width: 1.5
    ),
    borderRadius: BorderRadius.circular(8)
    ) ,

    hintText: data,
    ));

  }



}