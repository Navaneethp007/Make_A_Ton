import 'package:flutter/material.dart';
import 'prod.dart';

class Description extends StatelessWidget {
  const Description({
    Key ? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:20.0),
      child: Text(
        product.description,
        style: const TextStyle(height: 1.5),
      ),
    );
  }
}