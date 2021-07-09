import 'package:flutter/material.dart';

class Config {
  const Config();

  static double getScreenWidth(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final padding = MediaQuery.of(context).padding;
    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      return width - padding.left - padding.right;
    }
    return width - padding.left - padding.right - 10;
  }

  static double getScreenHeight(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final padding = MediaQuery.of(context).padding;
    return height - padding.top - padding.bottom;
  }
}
