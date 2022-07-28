import 'package:e_commerce_full/core/app_bar/app_bar.dart';
import 'package:e_commerce_full/core/side_menu/side_menu_page.dart';
import 'package:e_commerce_full/pages/home/home_page_body.dart';
import 'package:e_commerce_full/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons_null_safety/flutter_icons_null_safety.dart';

class HomePageIndex extends StatefulWidget {
  const HomePageIndex({Key? key}) : super(key: key);
  final Color? backgroundColor = primary;
  final String profileImageLink =
      "https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80";
  @override
  State<HomePageIndex> createState() => _HomePageIndexState();
}

class _HomePageIndexState extends State<HomePageIndex> {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  void appBarOnPressed() {
    scaffoldKey.currentState?.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: const SideMenuPage(),
      backgroundColor: primary,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: CustomAppBar(
          isIconActions: true,
          isHomePage: true,
          
          leadingIcon: const Icon(AntDesign.menu_unfold),
          onPressed: appBarOnPressed,
        ),
      ),
      body: const HomePageBody(),
    );
  }
}
