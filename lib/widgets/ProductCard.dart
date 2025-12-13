import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String image;
  final String title;
  final String price;
  final String? saleimage;

  const ProductCard({
    super.key,
    required this.image,
    this.saleimage,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30.0),
      ),
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
          Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Expanded(
        child: Text(
          title,
          maxLines: 2,
          style: Theme.of(context).textTheme.bodyLarge,
          textAlign: TextAlign.left,
        ),
      ),
      if(saleimage != null)
        Image.asset(
          saleimage!,
          height: 24,
          width: 24,
          fit: BoxFit.contain,
        ),

    ],
    ),
          Text(price),
        ],
      ),
    );
  }
}

