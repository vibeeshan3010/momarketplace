import 'package:flutter/material.dart';
import 'package:dotted_decoration/dotted_decoration.dart';

class BrandCircleWidget extends StatelessWidget {
  final String image;
  final String title;
  final Color borderColor;
  final List<int> dashPattern;

  const BrandCircleWidget({
    super.key,
    required this.image,
    required this.title,
    this.borderColor = Colors.red,
    required this.dashPattern
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(4),
          decoration: DottedDecoration(
            strokeWidth: 2,
            shape: Shape.circle,
            color: borderColor,
            dash: dashPattern,
          ),
          child: CircleAvatar(
            radius: 30,
            backgroundColor: Colors.white,
            backgroundImage: AssetImage(image),
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          width: 70,
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ),
      ],
    );
  }
}
