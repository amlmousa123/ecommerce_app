import 'package:ecommerce_app/core/widgets/product_countity.dart';
import 'package:ecommerce_app/features/Home/data/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartItemsListViewItem extends StatelessWidget {
  const CartItemsListViewItem({super.key, required this.product});
  final Product product;

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
            Image.asset(product.imageUrl!),
            SizedBox(
              width: size.width * .056,
            ),
            Column(
              children: [
                Text(
                  product.name!,
                  style: theme.textTheme.bodySmall,
                ),
                Text(
                  '\$${product.price} \/ kg',
                  style: theme.textTheme.displaySmall!
                      .copyWith(color: theme.disabledColor),
                ),
                const Spacer(),
                Row(
                  children: [
                    Text(
                      '2x  ',
                      style: theme.textTheme.displayMedium,
                    ),
                    Text(
                      '\$6.00  ',
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
                InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.cancel_outlined,
                    size: 20.sp,
                    color: theme.disabledColor,
                  ),
                ),
                ProductCountityCounter(width: size.width * .17, size: 12.sp)
              ],
            )
          ],
        ),
      ),
    );
  }
}
