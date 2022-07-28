import 'package:e_commerce_full/core/items/default_icon_circle.dart';
import 'package:e_commerce_full/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons_null_safety/flutter_icons_null_safety.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget {
  CustomAppBar(
      {Key? key,
      this.leadingIcon,
      this.isIconActions,
      this.title,
      this.isHomePage,
      this.actions,
      this.actionsIcon,
      this.onPressed})
      : super(key: key);
  final Widget? leadingIcon;
  final IconData? actionsIcon;
  final String? profileImageLink =
      "https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80";
  bool? isHomePage = false;
  List<Widget>? actions;

  bool? isIconActions = true;
  final Text? title;
  VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      automaticallyImplyLeading: false,
      backgroundColor: primary,
      title: title,
      centerTitle: title != null ? true : false,
      leading: IconButton(
        onPressed: onPressed,
        icon: leadingIcon ?? const Icon(AntDesign.menu_unfold),
        color: secondary,
      ),
      actions: isIconActions == true
          ? [
              isHomePage == true
                  ? 
                  Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border:
                              Border.all(color: secondary.withOpacity(0.5))),
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image:
                                    NetworkImage(profileImageLink.toString()),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                    )
                  : DefaultIconBoxWithIcon(
                      widgetIcon: actionsIcon,
                    ),
              const SizedBox(width: 20),
             
            ]
          : [],
    );
  }
}
