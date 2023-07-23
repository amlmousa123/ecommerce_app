import 'package:ecommerce_app/features/Home/data/models/product_model.dart';
import 'package:ecommerce_app/features/Home/presentation/view_models/home_cubit/home_cubit.dart';
import 'package:flutter/material.dart';

class AddCartButton extends StatelessWidget {
  const AddCartButton({super.key, required this.product, required this.ctx});
  final Product product;
  final BuildContext ctx;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        HomeCubit.get(ctx).addItemToCart(product);
      },
      style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).primaryColor,
          minimumSize:
              Size(double.infinity, MediaQuery.sizeOf(context).height * .073),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      child: Text(
        'Add to cart',
        style: Theme.of(context).textTheme.displayLarge,
      ),
    );
  }
}
