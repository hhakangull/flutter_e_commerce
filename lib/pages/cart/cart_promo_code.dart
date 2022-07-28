import 'package:e_commerce_full/theme/colors.dart';
import 'package:flutter/material.dart';

class CartPromoCode extends StatelessWidget {
  const CartPromoCode({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: double.infinity,
      decoration: BoxDecoration(
          color: secondary.withOpacity(0.05),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: secondary.withOpacity(0.3))),
      child: Row(
        children: [
          SizedBox(
            width: (size.width - 30) * 0.7,
            height: 55,
            child: const Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                // controller: _promoCodeController,
                textCapitalization: TextCapitalization.characters,
                cursorColor: secondary,
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: "Promo Code"),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: GestureDetector(
                onTap: () => debugPrint("Apply Button"),
                child: Container(
                  height: 55,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8), color: secondary),
                  child: const Center(
                    child: Text(
                      "Apply",
                      style: TextStyle(color: white),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
