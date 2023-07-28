part of 'cart_cubit.dart';

@immutable
abstract class CartState {}

class CartInitial extends CartState {}

class CartItemAdded extends CartState {}

class CartItemRemoved extends CartState {}

class CartItemsLoaded extends CartState {
  final List<CartItem> cartItems;

  CartItemsLoaded(this.cartItems);
}

class CountityCounterCountUp extends CartState {}

class CountityCounterCountDown extends CartState {}
