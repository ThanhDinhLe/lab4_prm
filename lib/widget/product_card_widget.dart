import 'package:flutter/material.dart';
import '../model/product.dart';

class ProductCardWidget extends StatelessWidget {
  const ProductCardWidget({super.key, required this.product, required this.onTap});

  final Product product;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: onTap,
        leading: const CircleAvatar(child: Icon(Icons.shopping_bag)),
        title: Text(product.name),
        subtitle: Text('${product.category}\n\$${product.price}'),
        isThreeLine: true,
        trailing: Text(product.discount, style: const TextStyle(color: Colors.red)),
      ),
    );
  }
}
