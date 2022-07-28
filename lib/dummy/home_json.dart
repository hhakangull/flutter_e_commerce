import 'package:e_commerce_full/model/product_model.dart';

List categoryItems = [
  {"title": "Shoes"},
  {"title": "Clothing"},
  {"title": "Laptops"},
  {"title": "Mobile"}
];

const List homeJson = [
  {
    "image": "assets/images/shoes_3_1_.png",
    "rate": 5.1,
    "favorite": true,
    "name": "Air Jordan 6 Retro",
    "price": "192,23",
    "colors": ["assets/images/shoes_3_1_.png", "assets/images/shoes_3_.png"]
  },
  {
    "image": "assets/images/shoes_6_.png",
    "rate": 5.6,
    "name": "Nike Air Max 97",
    "favorite": false,
    "price": "182,23",
    "colors": ["assets/images/shoes_6_.png", "assets/images/shoes_6_1_.png"]
  },
  {
    "image": "assets/images/shoes_7_.png",
    "rate": 4.5,
    "name": "Air Jordan 3 Retro",
    "favorite": false,
    "price": "197,21",
    "colors": [
      "assets/images/shoes_7_.png",
      "assets/images/shoes_7_1_.png",
      "assets/images/shoes_7_2_.png",
    ]
  },
  {
    "image": "assets/images/shoes_5_.png",
    "rate": 4.8,
    "name": "Nike Air Force 1 '07",
    "favorite": true,
    "price": "106,48",
    "colors": ["assets/images/shoes_5_.png", "assets/images/shoes_5_1_.png"]
  },
  {
    "image": "assets/images/shoes_1_.png",
    "rate": 4.2,
    "name": "Nike Air Max Bliss",
    "favorite": false,
    "price": "114,54",
    "colors": [
      "assets/images/shoes_1_.png",
      "assets/images/shoes_1_1_.png",
      "assets/images/shoes_1_2_.png",
      "assets/images/shoes_1_3_.png",
    ]
  },
  {
    "image": "assets/images/shoes_8_.png",
    "rate": 4.0,
    "name": "Nike ISPA Link",
    "price": "242,25",
    "colors": [
      "assets/images/shoes_8_.png",
      "assets/images/shoes_8_1_.png",
    ]
  },
];

List<Product> getProducts() {
  const data = [
    {
      "image": "assets/images/shoes_3_1_.png",
      "rate": 5.1,
      "favorite": true,
      "name": "Air Jordan 6 Retro",
      "price": "192,23",
      "colors": ["assets/images/shoes_3_1_.png", "assets/images/shoes_3_.png"]
    },
    {
      "image": "assets/images/shoes_6_.png",
      "rate": 5.6,
      "name": "Nike Air Max 97",
      "favorite": false,
      "price": "182,23",
      "colors": ["assets/images/shoes_6_.png", "assets/images/shoes_6_1_.png"]
    },
    {
      "image": "assets/images/shoes_7_.png",
      "rate": 4.5,
      "name": "Air Jordan 3 Retro",
      "favorite": false,
      "price": "197,21",
      "colors": [
        "assets/images/shoes_7_.png",
        "assets/images/shoes_7_1_.png",
        "assets/images/shoes_7_2_.png",
      ]
    },
    {
      "image": "assets/images/shoes_5_.png",
      "rate": 4.8,
      "name": "Nike Air Force 1 '07",
      "favorite": true,
      "price": "106,48",
      "colors": ["assets/images/shoes_5_.png", "assets/images/shoes_5_1_.png"]
    },
    {
      "image": "assets/images/shoes_1_.png",
      "rate": 4.2,
      "name": "Nike Air Max Bliss",
      "favorite": false,
      "price": "114,54",
      "colors": [
        "assets/images/shoes_1_.png",
        "assets/images/shoes_1_1_.png",
        "assets/images/shoes_1_2_.png",
        "assets/images/shoes_1_3_.png",
      ]
    },
    {
      "image": "assets/images/shoes_8_.png",
      "rate": 4.0,
      "name": "Nike ISPA Link",
      "favorite": true,
      "price": "242,25",
      "colors": [
        "assets/images/shoes_8_.png",
        "assets/images/shoes_8_1_.png",
      ]
    },
  
    {
      "image": "assets/images/shoes_3_1_.png",
      "rate": 5.1,
      "favorite": true,
      "name": "Air Jordan 6 Retro",
      "price": "192,23",
      "colors": ["assets/images/shoes_3_1_.png", "assets/images/shoes_3_.png"]
    },
    {
      "image": "assets/images/shoes_6_.png",
      "rate": 5.6,
      "name": "Nike Air Max 97",
      "favorite": false,
      "price": "182,23",
      "colors": ["assets/images/shoes_6_.png", "assets/images/shoes_6_1_.png"]
    },
    {
      "image": "assets/images/shoes_7_.png",
      "rate": 4.5,
      "name": "Air Jordan 3 Retro",
      "favorite": false,
      "price": "197,21",
      "colors": [
        "assets/images/shoes_7_.png",
        "assets/images/shoes_7_1_.png",
        "assets/images/shoes_7_2_.png",
      ]
    },
    {
      "image": "assets/images/shoes_5_.png",
      "rate": 4.8,
      "name": "Nike Air Force 1 '07",
      "favorite": true,
      "price": "106,48",
      "colors": ["assets/images/shoes_5_.png", "assets/images/shoes_5_1_.png"]
    },
    {
      "image": "assets/images/shoes_1_.png",
      "rate": 4.2,
      "name": "Nike Air Max Bliss",
      "favorite": false,
      "price": "114,54",
      "colors": [
        "assets/images/shoes_1_.png",
        "assets/images/shoes_1_1_.png",
        "assets/images/shoes_1_2_.png",
        "assets/images/shoes_1_3_.png",
      ]
    },
    {
      "image": "assets/images/shoes_8_.png",
      "rate": 4.0,
      "name": "Nike ISPA Link",
      "favorite": true,
      "price": "242,25",
      "colors": [
        "assets/images/shoes_8_.png",
        "assets/images/shoes_8_1_.png",
      ]
    },
  
  ];

  return data.map<Product>(Product.fromJson).toList();
}
