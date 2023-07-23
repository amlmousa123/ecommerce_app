part of 'home_cubit.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}

class ProductsLoaded extends HomeState {
  final List<Product> products;

  ProductsLoaded(this.products);
}

class CartItemAdded extends HomeState {}

class CartItemsLoaded extends HomeState {
  final List<Product> cartItems;

  CartItemsLoaded(this.cartItems);
}
