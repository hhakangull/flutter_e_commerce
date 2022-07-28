import 'package:e_commerce_full/core/side_menu/side_menu_body.dart';
import 'package:e_commerce_full/core/side_menu/side_menu_footer.dart';
import 'package:e_commerce_full/core/side_menu/side_menu_header.dart';
import 'package:flutter/material.dart';

class SideMenuPage extends StatefulWidget {
  const SideMenuPage({Key? key}) : super(key: key);

  @override
  State<SideMenuPage> createState() => _SideMenuPageState();
}

class _SideMenuPageState extends State<SideMenuPage> {
  final String profileImageLink =
      "https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children:  const [
          SideMenuHeader(),
          SideMenuBody(),
          SideMenuFooter()
        ],
      ),
    );
  }
}
