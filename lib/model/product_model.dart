class Product {
  String? image;
  double? rate;
  bool? favorite;
  String? name;
  String? price;
  List<String>? colors;

  Product(
      {this.image,
      this.rate,
      this.favorite,
      this.name,
      this.price,
      this.colors});

  Product.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    rate = json['rate'];
    favorite = json['favorite'];
    name = json['name'];
    price = json['price'];
    colors = json['colors'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['image'] = image;
    data['rate'] = rate;
    data['favorite'] = favorite;
    data['name'] = name;
    data['price'] = price;
    data['colors'] = colors;
    return data;
  }
}
