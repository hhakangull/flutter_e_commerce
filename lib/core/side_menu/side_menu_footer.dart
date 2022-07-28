import 'package:animate_do/animate_do.dart';
import 'package:e_commerce_full/core/side_menu/side_menu_list_tile.dart';
import 'package:e_commerce_full/pages/login/login_home.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class SideMenuFooter extends StatelessWidget {
  const SideMenuFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(),
        FadeInLeft(
          duration: const Duration(milliseconds: 200),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: SizedBox(
              child: SideMenuListTile(
                onTap: () {},
                icon: LineIcons.alternateSignOut,
                label: "Logout",
                page: const LoginHomePage(),
              ),
            ),
          ),
        )
      ],
    );
  }
}
