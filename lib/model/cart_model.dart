class CartModel {
  String? image;
  String? rate;
  String? name;
  String? price;
  int count = 0;
  List<String>? colors;

  CartModel(
      {this.image, this.rate, this.name, this.price, this.count = 0, this.colors});

  CartModel.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    rate = json['rate'];
    name = json['name'];
    price = json['price'];
    count = json['count'];
    colors = json['colors'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['image'] = image;
    data['rate'] = rate;
    data['name'] = name;
    data['price'] = price;
    data['colors'] = colors;
    data['count'] = count;
    return data;
  }
}
