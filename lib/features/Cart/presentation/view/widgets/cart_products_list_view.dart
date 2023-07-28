import 'package:ecommerce_app/features/Cart/data/models/cart_Item_model.dart';
import 'package:ecommerce_app/features/Cart/presentation/view/widgets/cart_products_list_view_item.dart';
import 'package:ecommerce_app/features/Cart/presentation/view_models/cubit/cart_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartProductsListView extends StatelessWidget {
  const CartProductsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
      builder: (context, state) {
        var cubit = CartCubit.get(context);
        List<CartItem> cartItems = cubit.getCartItems();
        return ListView.separated(
          itemBuilder: (context, index) {
            return CartItemsListViewItem(
              item: cartItems[index],
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
