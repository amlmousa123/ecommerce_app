import 'package:ecommerce_app/features/Home/data/models/product_model.dart';

class CartItem {
  final int countity;
  final Product product;
  final double totalPriceForProduct;

  CartItem(
      {required this.countity,
      required this.product,
      required this.totalPriceForProduct});
}
