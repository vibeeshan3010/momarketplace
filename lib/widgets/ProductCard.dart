import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String image;
  final String title;
  final String saleimage;

  const ProductCard({
    super.key,
    required this.image,
    required this.saleimage,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30.0),
      ),
      height: 300,
      width: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                  height: 200,
                  width: double.infinity,
                ),
              ),
              // Optional sale icon on top right
              // Positioned(
              //   top: 8,
              //   right: 8,
              //   child: Image.asset(
              //     saleimage,
              //     height: 24, // constrain size
              //     width: 24,
              //     fit: BoxFit.contain,
              //   ),
              // ),
            ],
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        title,
        style: Theme.of(context).textTheme.titleSmall,
        textAlign: TextAlign.left,
      ),
      Image.asset(
        saleimage,
        height: 24, // constrain size
        width: 24,
        fit: BoxFit.contain,
      ),
    ],
    )
          ),
        ],
      ),
    );
  }
}

