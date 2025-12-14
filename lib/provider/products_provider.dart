import 'package:flutter/material.dart';
import 'package:momarketplace/screens/productslist/model/products_response.dart';
import 'package:momarketplace/services/products_service.dart';

import '../screens/productslist/model/products.dart';

class ProductsProvider extends ChangeNotifier {
  final ProductService _productService = ProductService();

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  List<Products> _products = [];
  List<Products> get products => _products;

  Future<void> getProducts() async {
    _isLoading = true;
    notifyListeners();

    try {
      final ProductResponse response =
      await _productService.getProductsListService();

      _products = response.products;
      print("product name ${_products[0].images}" );
    } catch (e) {
      debugPrint('Error fetching products: $e');
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
