import 'package:e_commerce_full/theme/colors.dart';
import 'package:flutter/material.dart';

class CartReceipt extends StatelessWidget {
  const CartReceipt(
      {Key? key,
      required this.text,
      required this.count,
      required this.totalPrice,
      this.textColor})
      : super(key: key);

  final String text;
  final int count;
  final int totalPrice;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                text,
                style: const TextStyle(
                    fontSize: 16,
                    color: secondary,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(width: 2),
              Text(
                "($count items)",
                style: const TextStyle(
                  fontSize: 16,
                  color: secondary,
                ),
              ),
            ],
          ),
          Text(totalPrice == 0 ? "Free" : "\$" "$totalPrice",
              style: TextStyle(
                color: textColor ?? secondary,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              )),
        ],
      ),
    );
  }
}
