import 'package:e_commerce_full/theme/colors.dart';
import 'package:flutter/material.dart';

class SideMenuListTile extends StatelessWidget {
  const SideMenuListTile(
      {Key? key,
      required this.page,
      required this.icon,
      required this.label,
      required this.onTap})
      : super(key: key);

  final Widget page;
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.pop(context);
        Navigator.push(context, MaterialPageRoute(builder: (_) => page));
      },
      minLeadingWidth: 10,
      leading: Icon(icon, color: secondary),
      title:
          Text(label, style: const TextStyle(fontSize: 16, color: secondary)),
    );
  }
}
