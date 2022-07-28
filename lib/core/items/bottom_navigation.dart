import 'package:e_commerce_full/theme/colors.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation(
      {Key? key, required this.text, this.height, this.width, this.func})
      : super(key: key);

  final String text;
  final double? height;
  final double? width;

  final VoidCallback? func;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: func ?? () => debugPrint("Hello I'm bottom navigation => $text"),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Container(
          width: width ?? double.infinity,
          height: height ?? 55,
          decoration: BoxDecoration(
              color: secondary, borderRadius: BorderRadius.circular(12)),
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                  color: white, fontSize: 17, fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ),
    );
  }
}
