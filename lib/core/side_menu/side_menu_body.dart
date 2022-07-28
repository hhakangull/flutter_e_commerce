import 'package:animate_do/animate_do.dart';
import 'package:e_commerce_full/core/side_menu/side_menu_list_tile.dart';
import 'package:e_commerce_full/dummy/side_menu_json.dart';
import 'package:e_commerce_full/theme/colors.dart';
import 'package:flutter/material.dart';

class SideMenuBody extends StatelessWidget {
  const SideMenuBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(sideMenuItems.length, (index) {
        if (sideMenuItems[index]['selected']) {
          return FadeInLeft(
            duration: const Duration(milliseconds: 200),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: white,
                    boxShadow: [
                      BoxShadow(
                          color: secondary.withOpacity(0.03),
                          blurRadius: 2.5,
                          offset: const Offset(0, 5))
                    ]),
                child: SideMenuListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => sideMenuItems[index]['page']),
                    );
                  },
                  icon: sideMenuItems[index]['icon'],
                  label: sideMenuItems[index]['label'],
                  page: sideMenuItems[index]['page'],
                ),
              ),
            ),
          );
        }
        return FadeInLeft(
          duration: Duration(milliseconds: index * 200),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: SideMenuListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => sideMenuItems[index]['page']),
                );
              },
              page: sideMenuItems[index]['page'],
              icon: sideMenuItems[index]['icon'],
              label: sideMenuItems[index]['label'],
            ),
          ),
        );
      }),
    );
  }
}

