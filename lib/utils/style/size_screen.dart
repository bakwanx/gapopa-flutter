import 'package:flutter/material.dart';

class SizeScreen {
  static double maxHeight(BuildContext context) => MediaQuery.of(context).size.height;
  static double maxWidth(BuildContext context) => MediaQuery.of(context).size.width;
}
