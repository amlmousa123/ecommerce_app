import 'package:ecommerce_app/features/Cart/presentation/view/widgets/cart_products_list_view_item.dart';
import 'package:ecommerce_app/features/Home/data/models/product_model.dart';
import 'package:ecommerce_app/features/Home/presentation/view_models/home_cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartProductsListView extends StatelessWidget {
  const CartProductsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        var cubit = HomeCubit.get(context)..getCartItems();
        List<Product> cartItems = cubit.productsOfCart;
        print(cartItems);
        return ListView.separated(
          itemBuilder: (context, index) {
            return CartItemsListViewItem(
              product: cartItems[index],
            );
          },
          separatorBuilder: (context, index) {
            return Divider(
              thickness: 2,
              color: Theme.of(context).dividerColor,
            );
          },
          itemCount: cartItems.length,
          shrinkWrap: true,
          //aml
        );
      },
    );
  }
}
