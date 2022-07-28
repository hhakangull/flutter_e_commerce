import 'package:animate_do/animate_do.dart';
import 'package:e_commerce_full/core/app_bar/general_custom_appbar.dart';
import 'package:e_commerce_full/core/items/bottom_navigation.dart';
import 'package:e_commerce_full/core/items/default_icon_circle.dart';
import 'package:e_commerce_full/core/widgets/core_text_style.dart';
import 'package:e_commerce_full/dummy/favourite_json.dart';
import 'package:e_commerce_full/model/favorite_model.dart';
import 'package:e_commerce_full/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: GeneralCustomAppBar(
            text: "Favorite",
            actionsIcon: LineIcons.alternateTrash,
            actionsFunc: () => debugPrint("Hello"),
          ),
        ),
        bottomNavigationBar: const BottomNavigation(text: "Add To Cart"),
        body: getBody());
  }

  Widget getBody() {
    int isClickedIndex = 0;
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          Wrap(
            spacing: 20,
            runSpacing: 20,
            children: List.generate(getFavoriteItems().length, (index) {
              if (getFavoriteItems().isNotEmpty) {
                Favorite favorite = getFavoriteItems().elementAt(index);
                return Column(
                  children: [
                    FadeIn(
                      duration: Duration(milliseconds: 1000 * index),
                      child: GestureDetector(
                        onTap: () => setState(() {
                          isClickedIndex = index;
                          debugPrint("isClickedIndex : $isClickedIndex");
                          debugPrint("index : $index");
                        }),
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
                                    border: Border.all(
                                        color: isClickedIndex == index
                                            ? secondary.withOpacity(0.2)
                                            : Colors.transparent,
                                        width:
                                            isClickedIndex == index ? 1.2 : 0),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 15,
                                          top: 10,
                                          bottom: 10,
                                          right: 10,
                                        ),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                favorite.rate! >= 5.0
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
                                                  child: Text(
                                                      favorite.rate.toString()),
                                                ),
                                              ],
                                            ),
                                            DefaultIconBoxWithIcon(
                                              widgetIcon: LineIcons.shoppingBag,
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  favorite.active == null
                                                      ? favorite.active = false
                                                      : favorite.active =
                                                          !favorite.active!;
                                                });
                                              },
                                              child: DefaultIconBoxWithIcon(
                                                widgetIcon:
                                                    favorite.active == true
                                                        ? LineIcons.heartAlt
                                                        : LineIcons.heart,
                                                defaultSize: 23,
                                                color: favorite.active == true
                                                    ? Colors.redAccent
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
                                child: SizedBox(
                                  width: (size.width - 50) / 2,
                                  height: 180,
                                  child: Image.asset(favorite.image.toString()),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: (size.width - 60) / 2,
                          child: Text(
                            favorite.name.toString(),
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
                                favorite.price.toString(),
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
                    )
                  ],
                );
              }
              return Container();
            }),
          )
        ],
      ),
    );
  }
}
