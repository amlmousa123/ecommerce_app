import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/features/Cart/data/models/cart_Item_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());

  static CartCubit get(context) => BlocProvider.of<CartCubit>(context);

  List<CartItem> cartItems = [];
  int countityCounter = 1;

  void addItemToCart(CartItem item) {
    cartItems.add(item);

    emit(CartItemAdded());
  }

  void removeItemToCart(CartItem item) {
    cartItems.remove(item);

    emit(CartItemAdded());
  }

  List<CartItem> getCartItems() {
    emit(CartItemsLoaded(cartItems));
    return cartItems;
  }

  void countUp() {
    countityCounter++;
    emit(CountityCounterCountUp());
  }

  void countdown() {
    countityCounter--;
    emit(CountityCounterCountDown());
  }

  void resetCounter() {
    countityCounter = 1;
  }

  double calculateSubTotalPrice() {
    double subtotal = 0;
    for (var item in cartItems) {
      subtotal = subtotal + item.totalPriceForProduct;
    }
    return subtotal;
  }
}
