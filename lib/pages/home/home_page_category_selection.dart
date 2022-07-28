import 'package:e_commerce_full/core/widgets/core_text_style.dart';
import 'package:e_commerce_full/dummy/home_json.dart';
import 'package:e_commerce_full/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons_null_safety/flutter_icons_null_safety.dart';

class HomePageCategorySelection extends StatefulWidget {
  const HomePageCategorySelection({Key? key, required this.pageIndex})
      : super(key: key);
  final int pageIndex;

  @override
  _HomePageCategorySelectionState createState() =>
      _HomePageCategorySelectionState();
}

class _HomePageCategorySelectionState extends State<HomePageCategorySelection> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Category", style: CoreTextStyle.defaultTextStyle),
        const SizedBox(height: 15),
        Row(
          children: [
            SizedBox(
              width: (size.width - 30) * 0.7,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    categoryItems.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Container(
                        height: 30,
                        decoration: widget.pageIndex == index
                            ? const BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: secondary, width: 1.5)),
                              )
                            : const BoxDecoration(),
                        child: Text(
                          categoryItems[index]['title'],
                          style: TextStyle(
                              fontSize: CoreTextStyle.minTextSize,
                              fontWeight: CoreTextStyle.defaultTextWeight,
                              color: widget.pageIndex == index
                                  ? secondary
                                  : secondary.withOpacity(0.5)),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Container(
              height: 35,
              decoration: BoxDecoration(
                  color: secondary.withOpacity(0.1),
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(12),
                      topLeft: Radius.circular(4))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(AntDesign.search1),
                  SizedBox(width: 5),
                  Text(
                    "Search...",
                    style: TextStyle(fontSize: 13),
                  ),
                  SizedBox(width: 5),
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
