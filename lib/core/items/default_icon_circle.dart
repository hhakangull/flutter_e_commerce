import 'package:e_commerce_full/core/widgets/core_text_style.dart';
import 'package:e_commerce_full/theme/colors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DefaultIconBoxWithIcon extends StatelessWidget {
  DefaultIconBoxWithIcon(
      {Key? key,
      this.widgetIcon,
      this.defaultSize,
      this.color,
      this.width,
      this.onPressed,
      this.height})
      : super(key: key);

  final IconData? widgetIcon;
  Color? color = secondary;
  double? width;
  double? height;
  double? iconSize;
  double? defaultSize = CoreTextStyle.defaultTextSize;
  VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width ?? 35,
        height: height ?? 35,
        decoration: BoxDecoration(
          color: white,
          shape: BoxShape.circle,
          border: Border.all(
            color: secondary.withOpacity(0.25),
          ),
          boxShadow: [
            BoxShadow(
              color: secondary.withOpacity(0.5),
              blurRadius: 5,
              offset: const Offset(0, 5),
            )
          ],
        ),
        child: Center(
          child: Icon(
            widgetIcon,
            size: defaultSize,
            color: color,
          ),
        ),
      ),
    );
  }
}
