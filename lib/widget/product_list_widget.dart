import 'package:flutter/material.dart';
import '../model/product.dart';
import 'product_card_widget.dart';

class ProductListWidget extends StatelessWidget {
  const ProductListWidget({super.key, required this.products, required this.onTap});

  final List<Product> products;
  final ValueChanged<Product> onTap;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        for (final product in products)
          ProductCardWidget(product: product, onTap: () => onTap(product)),
      ],
    );
  }
}
