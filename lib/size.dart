import 'package:flutter/material.dart';

class Size {
  static late MediaQueryData mediaQueryData;
  static late double height;
  static late double width;
  static late Orientation orientation;

  static void init(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    height = mediaQueryData.size.height;
    width = mediaQueryData.size.width;
    orientation = mediaQueryData.orientation;
  }
}

double getHeight(double height) {
  return height / 812.0 * Size.height;
}

double getWidth(double width) {
  return width / 812.0 * Size.width;
}
