import 'package:kompress/app/models/product.dart';

class ProductList {
  final List<Product> list = [];

  toJSONEncodable() {
    return list.map((item) {
      return item.toJson();
    }).toList();
  }
}
