import 'package:animate_do/animate_do.dart';
import 'package:e_commerce_full/core/app_bar/general_custom_appbar.dart';
import 'package:e_commerce_full/core/items/bottom_navigation.dart';
import 'package:e_commerce_full/core/items/default_icon_circle.dart';
import 'package:e_commerce_full/core/widgets/core_text_style.dart';
import 'package:e_commerce_full/dummy/home_json.dart';
import 'package:e_commerce_full/model/product_model.dart';
import 'package:e_commerce_full/pages/product_detail/product_detail_home.dart';
import 'package:e_commerce_full/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  late List<Product> myProducts;
  @override
  void initState() {
    super.initState();
    myProducts = getProducts();
  }

  void _pushDetailPage(Product product) {
    Navigator.push(context,
        MaterialPageRoute(builder: (_) => ProductDetailHome(product: product)));
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: GeneralCustomAppBar(
          text: "Favorite",
          actionsIcon: LineIcons.alternateTrash,
        ),
      ),
      bottomNavigationBar: const BottomNavigation(text: "Add To Cart"),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Wrap(
              children: List.generate(
                myProducts.length,
                (index) {
                  Product product = myProducts.elementAt(index);
                  if (myProducts.isNotEmpty) {
                    return Column(
                      children: [
                        FadeIn(
                          duration: Duration(milliseconds: 1000 * index),
                          child: SizedBox(
                            width: (size.width - 50) / 2,
                            height: 220,
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 0,
                                  child: Container(
                                    width: (size.width - 50) / 2,
                                    height: 210,
                                    decoration: BoxDecoration(
                                      color: secondary.withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 15,
                                              top: 10,
                                              bottom: 10,
                                              right: 10),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  product.rate! >= 5.0
                                                      ? const Icon(
                                                          LineIcons.starAlt,
                                                          color: Colors.amber,
                                                          size: CoreTextStyle
                                                              .defaultTextSize,
                                                        )
                                                      : const Icon(
                                                          LineIcons.star,
                                                          color: secondary,
                                                          size: CoreTextStyle
                                                              .defaultTextSize,
                                                        ),
                                                  const SizedBox(width: 5),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 3),
                                                    child: Text(product.rate
                                                        .toString()),
                                                  ),
                                                ],
                                              ),
                                              DefaultIconBoxWithIcon(
                                                widgetIcon:
                                                    LineIcons.shoppingBag,
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  setState(() {
                                                    product.favorite == null
                                                        ? product.favorite =
                                                            false
                                                        : product.favorite =
                                                            !product.favorite!;
                                                  });
                                                },
                                                child: DefaultIconBoxWithIcon(
                                                  widgetIcon:
                                                      product.favorite == true
                                                          ? LineIcons.heartAlt
                                                          : LineIcons.heart,
                                                  defaultSize: 23,
                                                  color:
                                                      product.favorite == true
                                                          ? Colors.red
                                                          : null,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: -10,
                                  child: GestureDetector(
                                    onTap: () => _pushDetailPage(product),
                                    child: SizedBox(
                                      width: (size.width - 50) / 2,
                                      height: 180,
                                      child:
                                          Image.asset(product.image.toString()),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: (size.width - 60) / 2,
                              child: Text(
                                product.name.toString(),
                                style: CoreTextStyle.minUpTextStyle,
                              ),
                            ),
                            SizedBox(
                              width: (size.width - 60) / 2,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    "\$",
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                      color: red,
                                    ),
                                  ),
                                  const SizedBox(width: 1),
                                  Text(
                                    product.price.toString(),
                                    style: TextStyle(
                                      fontSize: CoreTextStyle.midTextSize,
                                      fontWeight: FontWeight.w500,
                                      color: secondary.withOpacity(0.5),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    );
                  }
                  return Container();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
