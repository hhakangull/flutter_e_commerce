// ignore_for_file: must_be_immutable

import 'package:e_commerce_full/theme/colors.dart';
import 'package:flutter/material.dart';

class CircleBackButton extends StatelessWidget {
  CircleBackButton(
      {Key? key, this.width, this.height, this.iconSize, this.icon, this.color})
      : super(key: key);

  double? width = 35;
  double? height = 35;
  double? iconSize = 18;
  final IconData? icon;
  Color? color = secondary;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: width,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: secondary.withOpacity(0.2))),
      child: Center(
        child: Icon(
          icon,
          size: iconSize,
          color: secondary,
        ),
      ),
    );
  }
}
