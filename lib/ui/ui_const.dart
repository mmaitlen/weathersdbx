import 'package:flutter/material.dart';

const Color colorDeepBlue = Color(0xFF3BB2E2);
Color color10Percent(Color color) => color.withOpacity(0.1);
extension Opacity50 on Color {
  Color get opacity50 => withOpacity(0.5);
}