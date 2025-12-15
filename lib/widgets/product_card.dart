import 'package:flutter/material.dart';
import 'package:momarketplace/util/app_colors.dart';

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
      // Outer container for the whole card
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0), // Slightly smaller radius than 30 for a cleaner look
        boxShadow: [
          // Optional: Adding a subtle shadow for elevation
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      width: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // --- Image Section ---
          ClipRRect(
            // Radius applied only to the top of the card
            borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
            child: Image.asset(
              image, // Product Image
              fit: BoxFit.cover,
              height: 200,
              width: double.infinity,
            ),
          ),

          // --- Content Section ---
          SizedBox(height: 12), // Space between image and text

          // Title and Optional Icon
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start, // Align text and icon at the top
              children: [
                Expanded(
                  child: Text(
                    title, // Product Title
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.displayMedium
                  ),
                ),
                if(saleimage != null)
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0), // Space between title and icon
                    child: Image.asset(
                      saleimage!,
                      height: 24,
                      width: 24,
                      fit: BoxFit.contain,
                    ),
                  ),
              ],
            ),
          ),

          SizedBox(height: 4), // Space between title and price

          // Price Section
          Padding(
            padding: const EdgeInsets.only(
              left: 12.0,
              right: 12.0,
              bottom: 15.0, // More bottom padding to lift content off the edge
            ),
            child: Text(
              price, // Product Price
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: AppColors.red, // Highlight the price color (optional)
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

