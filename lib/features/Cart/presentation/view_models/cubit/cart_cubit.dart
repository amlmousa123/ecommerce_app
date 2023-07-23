// import 'package:bloc/bloc.dart';
// import 'package:ecommerce_app/features/Home/data/models/product_model.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:meta/meta.dart';

// part 'cart_state.dart';

// class CartCubit extends Cubit<CartState> {
//   CartCubit() : super(CartInitial());

//   static CartCubit get(context) => BlocProvider.of<CartCubit>(context);

//   List<Product> cartItems = [];

//   void addItemToCart(Product item) {
//     cartItems.add(item);

//     emit(CartItemAdded());
//   }

//   List<Product> getCartItems() {
//     emit(CartItemsLoaded(cartItems));
//     return cartItems;
//   }
// }
