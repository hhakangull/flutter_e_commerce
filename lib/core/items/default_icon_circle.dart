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
      this.height})
      : super(key: key);

  final IconData? widgetIcon;
  Color? color = secondary;
  double? width;
  double? height;
  double? defaultSize = CoreTextStyle.defaultTextSize;

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
