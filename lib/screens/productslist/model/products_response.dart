import 'package:momarketplace/screens/productslist/model/products.dart';

class ProductResponse {
  final List<Products> products;
  final int total;
  final int skip;
  final int limit;

  ProductResponse({
    required this.products,
    required this.total,
    required this.skip,
    required this.limit,
  });

  factory ProductResponse.fromJson(Map<String, dynamic> json) {
    int parseInt(dynamic value) {
      if (value == null) return 0;
      if (value is int) return value;
      if (value is num) return value.toInt();
      if (value is String) return int.tryParse(value) ?? 0;
      return 0;
    }

    return ProductResponse(
      products: (json['products'] as List?)
          ?.map((e) => Products.fromJson(e as Map<String, dynamic>))
          .toList() ??
          [],
      total: parseInt(json['total']),
      skip: parseInt(json['skip']),
      limit: parseInt(json['limit']),
    );
  }
}