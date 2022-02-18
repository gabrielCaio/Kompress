import 'dart:convert';

class Product {
  final String name;
  final String expireDate;
  final String tag;
  final String observation;
  final int quantity;

  Product({
    this.expireDate = "",
    this.quantity = 0,
    this.observation = "",
    this.tag = "",
    this.name = "nameless",
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'expireDate': expireDate,
      'tag': tag,
      'observation': observation,
      'quantity': quantity,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      name: map['name'] ?? '',
      expireDate: map['expireDate'] ?? '',
      tag: map['tag'] ?? '',
      observation: map['observation'] ?? '',
      quantity: map['quantity']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) =>
      Product.fromMap(json.decode(source));
}
