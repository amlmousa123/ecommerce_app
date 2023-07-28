class Product {
  final String? imageUrl;
  final String? name;
  final double price;
  final String? description;

  Product({
    this.imageUrl,
    this.name,
    required this.price,
    this.description,
  });
}
