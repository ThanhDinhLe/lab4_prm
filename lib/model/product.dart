class Product {
  const Product({
    required this.name,
    required this.category,
    required this.price,
    required this.discount,
    required this.description,
  });

  final String name;
  final String category;
  final int price;
  final String discount;
  final String description;
}
