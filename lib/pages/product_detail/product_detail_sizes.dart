import 'package:e_commerce_full/core/widgets/core_text_style.dart';
import 'package:e_commerce_full/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ProductSize extends HookWidget {
  const ProductSize({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List sizes = [7, 7.5, 8, 8.5, 9, 9.5, 10, 10.5, 11, 11.5, 12, 12.5];
    var size = MediaQuery.of(context).size;
    var selected = useState(0);
    // var selected = 0;
    return Row(
      children: [
        SizedBox(
          width: size.width * 0.15,
          child: Text(
            "Sizes",
            style: CoreTextStyle.customFontStyle(textSize: 16.0),
          ),
        ),
        Flexible(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                sizes.length,
                (index) => GestureDetector(
                  onTap: () => selected.value = index,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: sizes[selected.value] == sizes[index]
                        ? _sizesButton(
                            value: sizes[index].toString(),
                            width: 2,
                            color: red)
                        : _sizesButton(value: sizes[index].toString()),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }

  Container _sizesButton({String? value, double? width, Color? color}) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: color?.withOpacity(0.8) ?? secondary.withOpacity(0.8),
          width: width ?? 1,
        ),
      ),
      child: Center(
        child: Text(
          value ?? "",
          style: CoreTextStyle.customFontStyle(
            weight: FontWeight.w400,
            textSize: 15.0,
          ),
        ),
      ),
    );
  }
}
