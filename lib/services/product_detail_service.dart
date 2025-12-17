import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/cupertino.dart';

import '../core/network/DioClient.dart';
import '../screens/productdetail/model/product_detail_response.dart';

class ProductDetailService {
  final Dio _dio = DioClient.dio;


  Future<ProductDetailResponse> getProductDetailService(int productId) async {
    try {
      debugPrint('🔄 Fetching product detail...');

      final response = await _dio.get('/products/$productId');

      debugPrint('✅ Response received - Status: ${response.statusCode}');

      if (response.statusCode == 200 && response.data != null) {
        return ProductDetailResponse.fromJson(response.data);
      } else {
        throw Exception('Invalid response: ${response.statusCode}');
      }
    } on DioException catch (e) {
      debugPrint('❌ DioException: ${e.type}');
      debugPrint('❌ Message: ${e.message}');
      debugPrint('❌ Response: ${e.response?.data}');

      switch (e.type) {
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.receiveTimeout:
          throw Exception('Connection timeout. Please try again.');
        case DioExceptionType.connectionError:
          throw Exception('No internet connection.');
        case DioExceptionType.badResponse:
          throw Exception('Server error: ${e.response?.statusCode}');
        default:
          throw Exception('Network error: ${e.message}');
      }
    } on TypeError catch (e) {
      debugPrint('❌ JSON parsing error: $e');
      throw Exception('Data format error.');
    } catch (e, stackTrace) {
      debugPrint('❌ Unexpected error: $e');
      debugPrint('Stack trace: $stackTrace');
      throw Exception('Failed to fetch product detail');
    }
  }
}
