import 'package:flutter/material.dart';
import '../model/product.dart';

class ProductDetailWidget extends StatelessWidget {
  const ProductDetailWidget({super.key, required this.product, required this.onAddToCart});

  final Product product;
  final VoidCallback onAddToCart;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(child: Icon(Icons.shopping_bag, size: 120, color: Colors.blue)),
          const SizedBox(height: 24),
          Text(product.name, style: Theme.of(context).textTheme.headlineSmall),
          const SizedBox(height: 8),
          Text('\$${product.price}', style: const TextStyle(fontSize: 24, color: Colors.red)),
          const SizedBox(height: 16),
          Text(product.description),
          const Spacer(),
          SizedBox(
            width: double.infinity,
            child: FilledButton(
              onPressed: onAddToCart,
              child: const Text('Add to cart'),
            ),
          ),
        ],
      ),
    );
  }
}
