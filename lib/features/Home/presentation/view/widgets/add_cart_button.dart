import 'package:ecommerce_app/features/Cart/data/models/cart_Item_model.dart';
import 'package:ecommerce_app/features/Cart/presentation/view_models/cubit/cart_cubit.dart';
import 'package:ecommerce_app/features/Home/data/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddCartButton extends StatelessWidget {
  const AddCartButton({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    return BlocListener<CartCubit, CartState>(
      listener: (context, state) {
        if (state is CartItemAdded) {
          Navigator.of(context).pop();
        }
      },
      child: ElevatedButton(
        onPressed: () {
          var cubit = CartCubit.get(context);
          cubit.addItemToCart(CartItem(
              countity: cubit.countityCounter,
              product: product,
              totalPriceForProduct: cubit.countityCounter * product.price));
          cubit.resetCounter();
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).primaryColor,
            minimumSize:
                Size(double.infinity, MediaQuery.sizeOf(context).height * .073),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        child: Text(
          'Add to cart',
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
    );
  }
}
