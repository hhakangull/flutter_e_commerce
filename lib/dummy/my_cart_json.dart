import 'package:e_commerce_full/model/cart_model.dart';

List<CartModel> getCartItems() {
  const myCartJson = [
    {
      "image": "assets/images/shoes_8_.png",
      "rate": "4.0",
      "name": "Nike ISPA Link",
      "price": "242,25",
      "colors": [
        "assets/images/shoes_8_.png",
        "assets/images/shoes_8_1_.png",
      ],
      "count": 1
    },
    {
      "image": "assets/images/shoes_7_.png",
      "rate": "4.5",
      "name": "Air Jordan 3 Retro",
      "price": "197,21",
      "colors": [
        "assets/images/shoes_7_.png",
        "assets/images/shoes_7_1_.png",
        "assets/images/shoes_7_2_.png",
      ],
      "count":2
    },
    {
      "image": "assets/images/shoes_3_1_.png",
      "rate": "5.1",
      "name": "Air Jordan 6 Retro",
      "price": "192,23",
      "colors": ["assets/images/shoes_3_1_.png", "assets/images/shoes_3_.png"],
      "count": 4
    },
  ];
  return myCartJson.map<CartModel>(CartModel.fromJson).toList();
}
