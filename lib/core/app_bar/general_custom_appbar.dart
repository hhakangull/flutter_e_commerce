import 'package:e_commerce_full/core/items/icon_button.dart';
import 'package:e_commerce_full/core/widgets/core_text_style.dart';
import 'package:e_commerce_full/theme/colors.dart';
import 'package:flutter/material.dart';

class GeneralCustomAppBar extends StatelessWidget {
  const GeneralCustomAppBar(
      {Key? key,
      this.width,
      this.height,
      this.leadingIconSize,
      this.actionsIconSize,
      required this.text,
      this.bgColor,
      this.actionsColor,
      this.actionsShadowColor,
      this.leadingIconColor,
      this.actionsIcon,
      this.leadingIcon,
      this.leadingFunc,
      this.actionsFunc})
      : super(key: key);

  final double? width;
  final double? height;
  final double? leadingIconSize;
  final double? actionsIconSize;
  final String text;
  final Color? bgColor;
  final Color? actionsColor;
  final Color? actionsShadowColor;
  final Color? leadingIconColor;
  final IconData? actionsIcon;
  final IconData? leadingIcon;
  final VoidCallback? leadingFunc;
  final VoidCallback? actionsFunc;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: bgColor ?? primary,
      centerTitle: true,
      title: Text(
        text,
        style: CoreTextStyle.defaultTextStyle,
      ),
      leading: IconButton(
        onPressed: leadingFunc ?? () => Navigator.pop(context),
        icon: Container(
          width: width ?? 35,
          height: height ?? 35,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: secondary.withOpacity(0.5)),
          ),
          child: Icon(
            leadingIcon ?? Icons.arrow_back_ios_new,
            size: leadingIconSize ?? 15,
            color: leadingIconColor ?? secondary,
          ),
        ),
      ),
      actions: [
        CustomIconButton(
          onPressed: actionsFunc,
          iconSize: actionsIconSize,
          color: actionsColor,
          height: height,
          width: width,
          icon: actionsIcon,
          shadowColor: actionsShadowColor,
        ),
        const SizedBox(width: 10),
      ],
    );
  }
}
