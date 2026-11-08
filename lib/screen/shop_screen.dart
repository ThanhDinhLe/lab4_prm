import 'package:flutter/material.dart';
import '../model/product.dart';
import '../model/product_data.dart';
import '../widget/cart_widget.dart';
import '../widget/product_detail_widget.dart';
import '../widget/product_list_widget.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  int selectedIndex = 0;
  Product selectedProduct = products[0];
  final List<Product> cart = [];

  void openDetail(Product product) {
    setState(() {
      selectedProduct = product;
      selectedIndex = 1;
    });
  }

  void addToCart() {
    setState(() {
      cart.add(selectedProduct);
      selectedIndex = 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    final bodies = [
      ProductListWidget(products: products, onTap: openDetail),
      ProductDetailWidget(product: selectedProduct, onAddToCart: addToCart),
      CartWidget(products: cart),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Products')),
      body: bodies[selectedIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        onDestinationSelected: (index) => setState(() => selectedIndex = index),
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.info), label: 'Detail'),
          NavigationDestination(icon: Icon(Icons.shopping_cart), label: 'Cart'),
        ],
      ),
    );
  }
}

