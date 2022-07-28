import 'package:e_commerce_full/core/widgets/core_text_style.dart';
import 'package:flutter/material.dart';

class SideMenuHeader extends StatelessWidget {
  const SideMenuHeader({Key? key}) : super(key: key);
  final String profileImageLink =
      "https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80";

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: DrawerHeader(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 5),
            Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: NetworkImage(profileImageLink), fit: BoxFit.cover),
              ),
            ),
            const SizedBox(height: 15),
            const Text("Hey,", style: CoreTextStyle.defaultTextStyle,),
            const Text("Hakan", style: CoreTextStyle.midTextStyle,)
          ],
        ),
      ),
    );
  }
}
