import 'package:flutter/material.dart';

class ProductsCard extends StatelessWidget {
  final String title;
  final double price;
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
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05), // very light
            blurRadius: 4, // soft blur
            offset: const Offset(0, 2), // slightly below
          ),
        ],
      ),

      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(url),
            Padding(padding: const EdgeInsets.all(8.0), child: Text(title)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8.0,
                    vertical: 4.0,
                  ),
                  child: Text('Rs.${price}'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    children: [
                      const Icon(Icons.star, color: Colors.amber, size: 16),
                      const SizedBox(width: 4),
                      Text('${rating}'),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
