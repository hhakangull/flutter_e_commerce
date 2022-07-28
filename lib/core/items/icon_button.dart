import 'package:e_commerce_full/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    Key? key,
    this.width,
    this.height,
    this.color,
    this.icon,
    this.shadowColor,
    this.iconSize,
    this.onPressed,
  }) : super(key: key);
  final double? width;
  final double? height;
  final Color? color;
  final Color? shadowColor;
  final IconData? icon;
  final double? iconSize;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Container(
        width: width ?? 40,
        height: height ?? 40,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: secondary.withOpacity(0.3)),
            boxShadow: [
              BoxShadow(
                color: shadowColor ?? secondary.withOpacity(0.15),
                blurRadius: 5,
                offset: const Offset(0, 5),
              )
            ]),
        child: Icon(
          icon ?? LineIcons.shoppingBag,
          size: iconSize ?? 18,
          color: color ?? secondary,
        ),
      ),
    );
  }
}
