class Favorite {
  String? image;
  double? rate;
  String? name;
  double? price = 0.0;
  bool? active = false;
  List<String>? colors;

  Favorite(
      {this.image, this.rate, this.name, this.price, this.active, this.colors});

  Favorite.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    rate = json['rate'];
    name = json['name'];
    price = json['price'];
    active = json['active'];
    colors = json['colors'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['image'] = image;
    data['rate'] = rate;
    data['name'] = name;
    data['price'] = price;
    data['active'] = active;
    data['colors'] = colors;
    return data;
  }
}
