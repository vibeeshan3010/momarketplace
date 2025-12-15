import 'package:flutter/material.dart';

class ProductsCard extends StatelessWidget {
  final String title;
  final double price; // Changed to double
  final String url;
  final double? rating;
  final String? brand;
  final double? discount;

  const ProductsCard({
    super.key,
    required this.title,
    required this.price,
    required this.url,
    this.rating,
    this.brand,
    this.discount,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(url),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(title),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 4.0),
                child: Text('\$${price}'),
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
                    Text('${rating}'),
                  ],
                ),
              ),
            ],
          )

        ],
      ),
    );
  }
}