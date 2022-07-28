import 'package:animate_do/animate_do.dart';
import 'package:e_commerce_full/core/widgets/core_text_style.dart';
import 'package:e_commerce_full/dummy/my_cart_json.dart';
import 'package:e_commerce_full/model/cart_model.dart';
import 'package:e_commerce_full/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class CartItemList extends StatefulWidget {
  const CartItemList({
    Key? key,
  }) : super(key: key);

  @override
  State<CartItemList> createState() => _CartItemListState();
}

class _CartItemListState extends State<CartItemList> {
  late List<CartModel> myCartItems;

  @override
  void initState() {
    super.initState();
    myCartItems = getCartItems();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Column(
      children: List.generate(
        myCartItems.length,
        (index) {
          CartModel myCartItem = myCartItems.elementAt(index);
          return Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: FadeIn(
              child: Row(
                children: [
                  SizedBox(
                    width: (size.width - 30) * 0.7,
                    height: 80,
                    child: SizedBox(
                      width: 80,
                      height: 80,
                      child: Stack(
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(myCartItem.image!),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Positioned(
                            top: 5,
                            child: Container(
                              width: 70,
                              height: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      color: secondary.withOpacity(0.2)),
                                  color: secondary.withOpacity(0.1)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 80),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  myCartItem.name ??
                                      "Ürün Adı bulunamadı Hata!",
                                  style: const TextStyle(
                                      fontSize: CoreTextStyle.minUpTextSize),
                                  maxLines: 2,
                                ),
                                const SizedBox(height: 5),
                                Row(
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(top: 3),
                                      child: Text(
                                        "\$",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: red),
                                      ),
                                    ),
                                    Text(
                                      myCartItem.price!,
                                      style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Flexible(
                    child: SizedBox(
                      height: 80,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Align(
                              alignment: Alignment.topRight,
                              child: Icon(Icons.close, size: 15)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Icon(LineIcons.minusSquare),
                              const SizedBox(width: 10),
                              Text(myCartItem.count.toString(),
                                  style: const TextStyle(fontSize: 16)),
                              const SizedBox(width: 10),
                              GestureDetector(
                                onTap: () => setState(() {
                                  myCartItem.count++;
                                  debugPrint(myCartItem.count.toString());
                                }),
                                child: const Icon(LineIcons.plusSquare),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
