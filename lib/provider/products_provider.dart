import 'package:flutter/material.dart';
import 'package:momarketplace/screens/productdetail/model/product_detail_response.dart';
import 'package:momarketplace/screens/productslist/model/products_response.dart';
import 'package:momarketplace/services/products_service.dart';

import '../screens/productslist/model/products.dart';

class ProductsProvider extends ChangeNotifier {
  final ProductService _productService = ProductService();

  bool _isLoading = false;
  int? _productId;
  bool get isLoading => _isLoading;
  int?  get productId => _productId;

  List<Products> _products = [];
 ProductDetailResponse _productDetailResponse = ProductDetailResponse() ;
  List<Products> get products => _products;
  ProductDetailResponse? get productdetail => _productDetailResponse;

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
