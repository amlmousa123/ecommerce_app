import 'package:ecommerce_app/core/widgets/product_countity.dart';
import 'package:ecommerce_app/features/Cart/data/models/cart_Item_model.dart';
import 'package:ecommerce_app/features/Cart/presentation/view_models/cubit/cart_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartItemsListViewItem extends StatelessWidget {
  const CartItemsListViewItem({super.key, required this.item});
  final CartItem item;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var size = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SizedBox(
        height: size.height * .088,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(item.product.imageUrl!),
            SizedBox(
              width: size.width * .056,
            ),
            Column(
              children: [
                Text(
                  item.product.name!,
                  style: theme.textTheme.bodySmall,
                ),
                Text(
                  '\$${item.product.price} \/ kg',
                  style: theme.textTheme.displaySmall!
                      .copyWith(color: theme.disabledColor),
                ),
                const Spacer(),
                Row(
                  children: [
                    Text(
                      '${item.countity}x  ',
                      style: theme.textTheme.displayMedium,
                    ),
                    Text(
                      '\$${item.totalPriceForProduct}  ',
                      style: theme.textTheme.displayMedium,
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                BlocBuilder<CartCubit, CartState>(
                  builder: (context, state) {
                    return InkWell(
                      onTap: () {
                        CartCubit.get(context).removeItemToCart(item);
                      },
                      child: Icon(
                        Icons.cancel_outlined,
                        size: 20.sp,
                        color: theme.disabledColor,
                      ),
                    );
                  },
                ),
                ProductCountityCounter(
                  width: size.width * .17,
                  size: 12.sp,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
