import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String productName;
  final double price;
  final String image;
  final Color backgroundColor;

  const ProductCard({
    super.key,
    required this.productName,
    required this.price,
    required this.image,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(productName, style: Theme.of(context).textTheme.titleMedium),
          Text('\$$price', style: Theme.of(context).textTheme.bodySmall),
          Center(child: Image(image: AssetImage(image), height: 170)),
        ],
      ),
    );
  }
}
