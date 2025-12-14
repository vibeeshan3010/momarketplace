import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:momarketplace/screens/productslist/model/products_response.dart';

class ProductService {
  late final Dio _dio;

  ProductService() {
    _dio = Dio(BaseOptions(
      baseUrl: 'https://dummyjson.com',
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    ));

    // Add logging in debug mode
    if (kDebugMode) {
      _dio.interceptors.add(LogInterceptor(
        request: true,
        requestBody: true,
        responseBody: true,
        error: true,
      ));
    }
  }

  Future<ProductResponse> getProductsListService() async {
    try {
      debugPrint('🔄 Fetching products from API...');

      final response = await _dio.get('/products');

      debugPrint('✅ Response received - Status: ${response.statusCode}');

      if (response.statusCode == 200 && response.data != null) {
        debugPrint('✅ Products fetched successfully');
        return ProductResponse.fromJson(response.data);
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
      debugPrint('❌ Type error (likely JSON parsing issue): $e');
      throw Exception('Data format error. Please contact support.');
    } catch (e, stackTrace) {
      debugPrint('❌ Unexpected error: $e');
      debugPrint('Stack trace: $stackTrace');
      throw Exception('Failed to fetch products: $e');
    }
  }
}