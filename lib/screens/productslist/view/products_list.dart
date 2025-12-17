import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:momarketplace/screens/productdetail/provider/productdetails_provider.dart';
import 'package:momarketplace/screens/productslist/provider/products_provider.dart';
import 'package:momarketplace/util/strings.dart';
import 'package:momarketplace/widgets/products_card.dart';
import 'package:provider/provider.dart';

import '../../../route/routes.dart';
import '../../../util/app_colors.dart';

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
     getProducts();
    });
  }


  void getProducts() async {
    final productprovider = Provider.of<ProductsProvider>(context,listen: false);
    productprovider.getProducts();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<ProductsProvider>(
        builder: (context, provider, _) {

          if (provider.isLoading) {
            return Center(child: CircularProgressIndicator(color: AppColors.red,));
          }

          if (provider.products.isEmpty) {
            return const Center(child: Text('No products available'));
          }

          return GridView.builder(
            padding: const EdgeInsets.all(8),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio: 0.7,
            ),
            itemCount: provider.products.length,
            itemBuilder: (context, index) {
              final product = provider.products[index];
              return GestureDetector(
                onTap: (){
                  final productdetailsprovider =Provider.of<ProductDetailsProvider>(context,listen: false);
                  productdetailsprovider.setProductDetails(product.id);
                  Navigator.pushNamed(context, Routes.productsdetails);
                },
                child: ProductsCard(
                  title: product.title,
                  price: product.price,
                  url: product.thumbnail,
                  rating: product.rating,
                ),
              );
            },
          );
        },
      ),
    );
  }
}