import 'package:momarketplace/screens/productslist/model/review.dart';
import 'package:momarketplace/screens/productslist/model/dimensions.dart';
import 'package:momarketplace/screens/productslist/model/meta.dart';

class Products {
  final int id;
  final String title;
  final String description;
  final String category;
  final double price;
  final double discountPercentage;
  final double rating;
  final int stock;
  final List<String> tags;
  final String brand;
  final String sku;
  final double weight;
  final Dimensions? dimensions;
  final String? warrantyInformation;
  final String? shippingInformation;
  final String? availabilityStatus;
  final List<Review> reviews;
  final String? returnPolicy;
  final int minimumOrderQuantity;
  final Meta? meta;
  final String thumbnail;
  final List<String> images;

  Products({
    required this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.price,
    required this.discountPercentage,
    required this.rating,
    required this.stock,
    required this.tags,
    required this.brand,
    required this.sku,
    required this.weight,
    this.dimensions,
    this.warrantyInformation,
    this.shippingInformation,
    this.availabilityStatus,
    required this.reviews,
    this.returnPolicy,
    required this.minimumOrderQuantity,
    this.meta,
    required this.thumbnail,
    required this.images,
  });

  factory Products.fromJson(Map<String, dynamic> json) {
    double parseDouble(dynamic value) {
      if (value == null) return 0.0;
      if (value is num) return value.toDouble();
      if (value is String) return double.tryParse(value) ?? 0.0;
      return 0.0;
    }

    int parseInt(dynamic value) {
      if (value == null) return 0;
      if (value is int) return value;
      if (value is num) return value.toInt();
      if (value is String) return int.tryParse(value) ?? 0;
      return 0;
    }

    try {
      return Products(
        id: parseInt(json['id']),
        title: json['title']?.toString() ?? '',
        description: json['description']?.toString() ?? '',
        category: json['category']?.toString() ?? '',
        price: parseDouble(json['price']),
        discountPercentage: parseDouble(json['discountPercentage']),
        rating: parseDouble(json['rating']),
        stock: parseInt(json['stock']),
        tags: (json['tags'] as List?)?.map((e) => e.toString()).toList() ?? [],
        brand: json['brand']?.toString() ?? '',
        sku: json['sku']?.toString() ?? '',
        weight: parseDouble(json['weight']),
        dimensions: json['dimensions'] != null
            ? Dimensions.fromJson(json['dimensions'] as Map<String, dynamic>)
            : null,
        warrantyInformation: json['warrantyInformation']?.toString(),
        shippingInformation: json['shippingInformation']?.toString(),
        availabilityStatus: json['availabilityStatus']?.toString(),
        reviews: (json['reviews'] as List?)
            ?.map((e) => Review.fromJson(e as Map<String, dynamic>))
            .toList() ??
            [],
        returnPolicy: json['returnPolicy']?.toString(),
        minimumOrderQuantity: parseInt(json['minimumOrderQuantity']),
        meta: json['meta'] != null
            ? Meta.fromJson(json['meta'] as Map<String, dynamic>)
            : null,
        thumbnail: json['thumbnail']?.toString() ?? '',
        images:
        (json['images'] as List?)?.map((e) => e.toString()).toList() ?? [],
      );
    } catch (e) {
      print('❌ Error parsing Products: $e');
      print('JSON: $json');
      rethrow;
    }
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'category': category,
      'price': price,
      'discountPercentage': discountPercentage,
      'rating': rating,
      'stock': stock,
      'tags': tags,
      'brand': brand,
      'sku': sku,
      'weight': weight,
      'dimensions': dimensions?.toJson(),
      'warrantyInformation': warrantyInformation,
      'shippingInformation': shippingInformation,
      'availabilityStatus': availabilityStatus,
      'reviews': reviews.map((e) => e.toJson()).toList(),
      'returnPolicy': returnPolicy,
      'minimumOrderQuantity': minimumOrderQuantity,
      'meta': meta?.toJson(),
      'thumbnail': thumbnail,
      'images': images,
    };
  }
}