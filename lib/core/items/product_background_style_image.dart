import 'package:e_commerce_full/theme/colors.dart';
import 'package:flutter/material.dart';

class ProductBackGroundStyle extends StatelessWidget {
  const ProductBackGroundStyle({
    Key? key,
    this.height,
    this.inHeight,
    this.imageHeight,
    required this.imgUrl,
  }) : super(key: key);

  final double? height;
  final double? inHeight;
  final double? imageHeight;
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    debugPrint(imgUrl);
    return Flexible(
      child: SizedBox(
        height: height ?? 350,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Container(
                height: inHeight ?? 300,
                decoration: BoxDecoration(
                  color: secondary.withOpacity(0.12),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(120),
                    topLeft: Radius.circular(120),
                    topRight: Radius.circular(40),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: imageHeight ?? 270,
              child: Image.asset(
                imgUrl,
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
      ),
    );
  }
}
