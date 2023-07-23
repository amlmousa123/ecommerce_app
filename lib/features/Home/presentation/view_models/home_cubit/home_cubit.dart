import 'package:ecommerce_app/features/Home/data/models/product_model.dart';
import 'package:ecommerce_app/features/Home/data/repository/product_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  static HomeCubit get(context) => BlocProvider.of<HomeCubit>(context);
  List<Product> products = [];
  List<Product> productsOfCart = [];

  List<Product> getProducts() {
    List<Product> items = ProductRepo.products;
    emit(ProductsLoaded(items));
    products = items;
    return products;
  }

  void addItemToCart(Product item) {
    productsOfCart.add(item);
    print(productsOfCart);

    emit(CartItemAdded());
  }

  List<Product> getCartItems() {
    emit(CartItemsLoaded(productsOfCart));
    return productsOfCart;
  }
}
