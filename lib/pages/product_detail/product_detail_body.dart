import 'package:animate_do/animate_do.dart';
import 'package:e_commerce_full/core/items/default_icon_circle.dart';
import 'package:e_commerce_full/core/items/product_background_style_image.dart';
import 'package:e_commerce_full/core/widgets/core_text_style.dart';
import 'package:e_commerce_full/model/product_model.dart';
import 'package:e_commerce_full/pages/product_detail/product_detail_sizes.dart';
import 'package:e_commerce_full/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:line_icons/line_icons.dart';

class ProductDetailBody extends HookWidget {
  const ProductDetailBody({Key? key, required this.product}) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var useFavorite = useState(product.favorite!);
    var useCurrentDisplayImage = useState(product.colors!.first);
    return SingleChildScrollView(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            product.name.toString(),
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              product.rate! >= 5.0
                  ? const Icon(
                      LineIcons.starAlt,
                      color: Colors.amber,
                      size: 20,
                      shadows: [
                        BoxShadow(
                            color: Colors.black,
                            blurRadius: 3,
                            offset: Offset(0, 1.5)),
                      ],
                    )
                  : const Icon(LineIcons.star, size: 20),
              const SizedBox(width: 5),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  "${product.rate} Reviews.",
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 3),
                    child: Text(
                      "\$",
                      style: TextStyle(
                          fontSize: 16,
                          color: red,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Text(product.price!, style: CoreTextStyle.midUpTextStyle),
                ],
              ),
              GestureDetector(
                onTap: () => useFavorite.value = !useFavorite.value,
                child: DefaultIconBoxWithIcon(
                  widgetIcon: useFavorite.value == true
                      ? LineIcons.heartAlt
                      : LineIcons.heart,
                  defaultSize: 23,
                  color: useFavorite.value == true ? Colors.red : null,
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FadeIn(
                child: Container(
                  color: white.withOpacity(0.5),
                  width: size.width * 0.25,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: SingleChildScrollView(
                      child: product.colors!.isNotEmpty
                          ? Column(
                              children: List.generate(
                                product.colors!.length,
                                (index) {
                                  useCurrentDisplayImage.value =
                                      product.colors![index];
                                  return Padding(
                                    padding:
                                        const EdgeInsets.only(bottom: 15.0),
                                    child: SizedBox(
                                      width: 70,
                                      height: 70,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            top: 10,
                                            child: Container(
                                              height: 60,
                                              width: 60,
                                              decoration: BoxDecoration(
                                                color: white,
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                border: Border.all(
                                                  color: secondary
                                                      .withOpacity(0.1),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 60,
                                            width: 60,
                                            child: Image.asset(
                                                product.colors![index],
                                                fit: BoxFit.cover),
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            )
                          : Column(),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              ProductBackGroundStyle(imgUrl: useCurrentDisplayImage.value)
            ],
          ),
          const SizedBox(height: 20),
          const ProductSize(),
        ],
      ),
    );
  }
}
