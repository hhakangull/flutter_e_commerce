import 'package:e_commerce_full/core/app_bar/app_bar.dart';
import 'package:e_commerce_full/core/items/circle_icon_button.dart';
import 'package:e_commerce_full/model/product_model.dart';
import 'package:e_commerce_full/pages/product_detail/product_detail_body.dart';
import 'package:e_commerce_full/pages/product_detail/product_detail_footer.dart';
import 'package:e_commerce_full/theme/colors.dart';
import 'package:flutter/material.dart';

class ProductDetailHome extends StatelessWidget {
  const ProductDetailHome({Key? key, required this.product}) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: CustomAppBar(
          title: const Text(
            "Product Detail",
            style: TextStyle(
              fontSize: 18,
              color: secondary,
              fontWeight: FontWeight.w600,
            ),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          isIconActions: false,
          leadingIcon: CircleBackButton(
            icon: Icons.arrow_back_ios_new,
            iconSize: 15,
          ),
        ),
      ),
      bottomNavigationBar: const ProductDetailFooter(),
      body: ProductDetailBody(
        product: product,
      ),
    );
  }
}
