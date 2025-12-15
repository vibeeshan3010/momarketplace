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
      body: provider.isLoading
          ? const Center(child: CircularProgressIndicator())
          : provider.products.isEmpty
          ? const Center(child: Text('No products available'))
          : GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,        // 2 columns
          crossAxisSpacing: 8,      // space between columns
          mainAxisSpacing: 8,       // space between rows
          childAspectRatio: 0.7,    // controls card height
        ),
        itemCount: provider.products.length,
        padding: const EdgeInsets.all(8), // Added padding
        itemBuilder: (context, index) {
          final product = provider.products[index];
          return Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                    Image.network(product.thumbnail),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(product.title),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 4.0),
                          child: Text('\$${product.price}'),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 16,
                              ),
                              const SizedBox(width: 4),
                              Text('${product.rating}'),
                            ],
                          ),
                        ),
                      ],
                    )

              ],
            ),
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
