import 'package:flutter/material.dart';
class DimensionItem extends StatelessWidget {
  final String label;
  final double? value;

  const DimensionItem(this.label, this.value);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          label,
          style: const TextStyle(color: Colors.grey),
        ),
        const SizedBox(height: 4),
        Text(
          value?.toStringAsFixed(1) ?? '-',
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}