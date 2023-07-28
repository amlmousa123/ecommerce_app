import 'package:ecommerce_app/core/resources/colors.dart';
import 'package:ecommerce_app/features/Cart/presentation/view_models/cubit/cart_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductCountityCounter extends StatelessWidget {
  const ProductCountityCounter(
      {super.key, required this.width, required this.size});
  final double width;
  final double size;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
      builder: (context, state) {
        var cubit = CartCubit.get(context);
        return Container(
            width: width,
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    cubit.countdown();
                  },
                  child: Icon(
                    Icons.remove,
                    color: ColorsApp.white,
                    size: size,
                  ),
                ),
                Text(
                  cubit.countityCounter.toString(),
                  style: TextStyle(fontSize: size, color: ColorsApp.white),
                ),
                GestureDetector(
                  onTap: () {
                    cubit.countUp();
                  },
                  child: Icon(
                    Icons.add,
                    color: ColorsApp.white,
                    size: size,
                  ),
                )
              ],
            ));
      },
    );
  }
}
