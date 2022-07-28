import 'package:e_commerce_full/core/app_bar/general_custom_appbar.dart';
import 'package:e_commerce_full/core/items/bottom_navigation.dart';
import 'package:e_commerce_full/model/cart_model.dart';
import 'package:e_commerce_full/pages/cart/cart_bottom_side.dart';
import 'package:e_commerce_full/pages/cart/cart_item_list.dart';
import 'package:e_commerce_full/pages/cart/cart_promo_code.dart';
import 'package:e_commerce_full/theme/colors.dart';
import 'package:flutter/material.dart';

class CartHome extends StatelessWidget {
  CartHome({Key? key}) : super(key: key);

  late List<CartModel> myCartItems;

  // final _promoCodeController = useTextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    void backWithNavigator() {
      Navigator.pop(context);
    }

    return Scaffold(
      backgroundColor: primary,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: GeneralCustomAppBar(
          text: "My Cart",
          leadingFunc: backWithNavigator,
        ),
      ),
      bottomNavigationBar: const BottomNavigation(
        text: "Processed to Checkout",
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CartItemList(),
            const SizedBox(height: 20),
            CartPromoCode(size: size),
            const SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                CartReceipt(text: "Subtotal", count: 3, totalPrice: 600),
                SizedBox(height: 30),
                CartReceipt(text: "Delivery charge", count: 3, totalPrice: 0),
                SizedBox(height: 30),
                CartReceipt(
                  text: "Total",
                  count: 3,
                  totalPrice: 600,
                  textColor: red,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
