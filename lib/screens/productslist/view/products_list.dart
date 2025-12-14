import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../providers/products_provider.dart';
class ProductsList extends StatefulWidget {
  const ProductsList({super.key});

  @override
  State<ProductsList> createState() => _ProductsListState();
}


class _ProductsListState extends State<ProductsList> {
  final Dio dio = Dio();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
     getProduct();
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("ProductsList")
          ],
        ));
  }

  void getProduct() async {
    final productprovider = Provider.of<ProductProvider>(context,listen: false);
    productprovider.getProducts();
  }
}
