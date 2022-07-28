import 'package:e_commerce_full/core/widgets/core_text_style.dart';
import 'package:e_commerce_full/dummy/ads_json.dart';
import 'package:e_commerce_full/pages/home/home_page_category_selection.dart';
import 'package:e_commerce_full/pages/home/home_page_item_list.dart';
import 'package:e_commerce_full/widgets/custom_slider.dart';
import 'package:flutter/material.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({Key? key}) : super(key: key);

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          const Text(
            "Hello Hakan",
            style: CoreTextStyle.midTextStyle,
          ),
          const Text(
            "Let's get something",
            style: CoreTextStyle.minTextStyle,
          ),
          const SizedBox(height: 20),
          const CustomSlider(items: adsJson),
          const SizedBox(height: 20),
          HomePageCategorySelection(pageIndex: pageIndex),
          const SizedBox(height: 20),
          const HomePageItemList(),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
