import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:momarketplace/provider/products_provider.dart';
import 'package:momarketplace/widgets/products_card.dart';
import 'package:provider/provider.dart';

class ProductsList extends StatefulWidget {
  const ProductsList({super.key});

  @override
  State<ProductsList> createState() => _ProductsListState();
}


class _ProductsListState extends State<ProductsList> {
  final Dio dio = Dio();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
     getProduct();
    });
  }


  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProductsProvider>(context,listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: provider.isLoading
          ? const Center(child: CircularProgressIndicator())
          : provider.products.isEmpty
          ? const Center(child: Text('No products available'))
          : ListView.builder(
        itemCount: provider.products.length,
        padding: const EdgeInsets.all(8), // Added padding
        itemBuilder: (context, index) {
          final product = provider.products[index];
          return ProductsCard(
            title: product.title,
            price: product.price, // Pass as double, not string
            url: product.thumbnail,
            rating: product.rating,
            brand: product.brand,
            discount: product.discountPercentage,
          );
        },
      ),
    );
  }

  void getProduct() async {
    final productprovider = Provider.of<ProductsProvider>(context,listen: false);
    productprovider.getProducts();
  }
}
