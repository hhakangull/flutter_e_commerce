import 'package:e_commerce_full/core/items/default_icon_circle.dart';
import 'package:e_commerce_full/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:line_icons/line_icons.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';

class ProductDetailFooter extends HookWidget {
  const ProductDetailFooter({Key? key}) : super(key: key);

  // final useCounter = useState(1);
  @override
  Widget build(BuildContext context) {
    final useCount = useState(1);

    return Container(
      height: 100,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: secondary,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "More",
              style: TextStyle(
                  fontWeight: FontWeight.w500, fontSize: 18, color: white),
            ),
            Row(
              children: [
                Container(
                  width: 120,
                  height: 35,
                  decoration: BoxDecoration(
                    color: primary.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: white),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () => useCount.value > 1
                              ? useCount.value--
                              : _minProductCountWarning(useCount.value)
                                  .show(context),
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                color: white,
                                borderRadius: BorderRadius.circular(4)),
                            child: const Center(
                              child: Icon(Icons.remove),
                            ),
                          ),
                        ),
                        Text(
                          '${useCount.value}',
                          style: const TextStyle(color: white, fontSize: 18),
                        ),
                        GestureDetector(
                          onTap: () => useCount.value++,
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                color: white,
                                borderRadius: BorderRadius.circular(4)),
                            child: const Center(
                              child: Icon(Icons.add),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 15),
                DefaultIconBoxWithIcon(
                  widgetIcon: LineIcons.shoppingBag,
                  defaultSize: 23,
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  MotionToast _minProductCountWarning(int count) {
    if (count == 0 || count == 1) count = 0;
    return MotionToast(
      icon: Icons.warning_rounded,
      primaryColor: Colors.orangeAccent,
      title: const Text(
        "Ürün adet sayısı sorunu!",
        style: TextStyle(fontSize: 16),
      ),
      description: Text(
        "En az 1 adet ürün sepetinize ekleyebilirsiniz. Siz $count adet ürün seçtiniz.",
        overflow: TextOverflow.clip,
      ),
      toastDuration: const Duration(seconds: 2),
      animationDuration: const Duration(seconds: 2),
      enableAnimation: true,
      position: MotionToastPosition.top,
      animationType: AnimationType.fromTop,
    );
  }
}
