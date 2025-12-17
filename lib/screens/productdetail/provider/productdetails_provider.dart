import 'package:flutter/cupertino.dart';
import 'package:momarketplace/services/product_detail_service.dart';

import '../model/product_detail_response.dart';
import '../../productslist/model/products.dart';
import '../../../services/products_service.dart';

class ProductDetailsProvider extends ChangeNotifier{
  final ProductDetailService _productDetailService = ProductDetailService();
  int? _productId;
  bool _isLoading = false;
  bool get isLoading => _isLoading;
  int?  get productId => _productId;
  List<Products> _products = [];
  ProductDetailResponse _productDetailResponse = ProductDetailResponse() ;
  ProductDetailResponse? get productdetail => _productDetailResponse;

  void setProductDetails(int productId) {
    _productId = productId;
  }
  int? getProductId(){
    return _productId;
  }

  Future<void> getProductDetails(int productId) async {
    _isLoading = true;
    notifyListeners();
    try{

      final result = await _productDetailService.getProductDetailService(productId);

      _productDetailResponse =  result;

      _isLoading = false;

      print("title ${_productDetailResponse.title}");
      print("Description ${_productDetailResponse.description}");
      notifyListeners();
    }catch(e){
      debugPrint("Error fetching response $e");
    }

  }
}