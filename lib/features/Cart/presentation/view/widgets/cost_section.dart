import 'package:ecommerce_app/features/Cart/presentation/view_models/cubit/cart_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CostSection extends StatelessWidget {
  const CostSection({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return BlocBuilder<CartCubit, CartState>(
      builder: (context, state) {
        var cubit = CartCubit.get(context);
        double subtotal = cubit.calculateSubTotalPrice();
        return Padding(
          padding: const EdgeInsets.all(15),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Subtotal:', style: theme.textTheme.bodyMedium),
                Text('\$$subtotal', style: theme.textTheme.bodyMedium),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Shipping:',
                  style: theme.textTheme.bodyMedium,
                ),
                Text('\$3.00', style: theme.textTheme.bodyMedium),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Divider(
                thickness: 2,
                color: theme.dividerColor,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total:',
                  style: theme.textTheme.titleMedium,
                ),
                Text(
                  '\$${subtotal + 3}',
                  style: theme.textTheme.titleMedium,
                ),
              ],
            )
          ]),
        );
      },
    );
  }
}
