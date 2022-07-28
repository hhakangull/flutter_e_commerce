import 'package:e_commerce_full/theme/colors.dart';
import 'package:flutter/material.dart';

class CoreTextStyle {
  static const defaultTextStyle =
      TextStyle(fontSize: defaultTextSize, fontWeight: FontWeight.w500, color: secondary);
  static const minTextStyle =
      TextStyle(fontSize: minTextSize, fontWeight: FontWeight.w500);

  static const minUpTextStyle =
      TextStyle(fontSize: minUpTextSize, fontWeight: FontWeight.w500);
  static const midTextStyle =
      TextStyle(fontSize: midTextSize, fontWeight: FontWeight.w500);

  static const midUpTextStyle =
      TextStyle(fontSize: midUpTextSize, fontWeight: FontWeight.w500);

  static const defaultFontWeight = FontWeight.w500;

  static customFontStyle(
      {double? textSize, FontWeight? weight, Color? color, Color? bgColor}) {
    return TextStyle(
        fontSize: textSize ?? defaultTextSize,
        fontWeight: weight ?? FontWeight.w500,
        color: color ?? secondary,
        backgroundColor: bgColor ?? Colors.transparent);
  }

  static const defaultTextSize = 18.0;
  static const defaultTextWeight = FontWeight.w500;
  static const minUpTextSize = 16.0;
  static const minTextSize = 15.0;
  static const minTextWeight = FontWeight.w400;
  static const midTextSize = 20.0;
  static const midTextWeight = FontWeight.normal;
  static const midUpTextSize = 25.0;
  static const maxTextSize = 28.0;
}
