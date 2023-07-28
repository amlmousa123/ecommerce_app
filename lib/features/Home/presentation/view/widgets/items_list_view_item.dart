import 'package:ecommerce_app/core/resources/strings.dart';
import 'package:ecommerce_app/features/Cart/data/models/cart_Item_model.dart';
import 'package:ecommerce_app/features/Cart/presentation/view_models/cubit/cart_cubit.dart';
import 'package:ecommerce_app/features/Home/data/models/product_model.dart';
import 'package:ecommerce_app/features/Home/presentation/view/widgets/price-of_kg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemsListViewItem extends StatelessWidget {
  const ItemsListViewItem({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var size = MediaQuery.sizeOf(context);
    return BlocListener<CartCubit, CartState>(
      listener: (context, state) {
        if (state is CartItemAdded) {
          // ScaffoldMessenger.of(context).showSnackBar(
          //   const SnackBar(
          //     content: Text('Item is added in cart'),
          //   ),
          // );
        }
      },
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, RoutersName.itemDetailsScreen,
              arguments: product);
        },
        child: Container(
          width: size.width * .48,
          height: size.height * .76,
          decoration: BoxDecoration(
            border: Border.all(color: theme.dividerColor),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                    child: SizedBox(
                        height: size.height * .125,
                        child: Image.asset(product.imageUrl!))),
                Text(
                  product.name!,
                  style: theme.textTheme.titleMedium,
                ),
                Row(
                  children: [
                    PriceOfKg(fontSize: 16.sp, price: product.price.toString()),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        var cubit = CartCubit.get(context);
                        cubit.addItemToCart(CartItem(
                            countity: 1,
                            product: product,
                            totalPriceForProduct: product.price));
                      },
                      child: Container(
                        width: size.width * .07,
                        height: size.width * .07,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: theme.primaryColor,
                        ),
                        child: Icon(
                          Icons.add,
                          color: theme.scaffoldBackgroundColor,
                          size: 20.sp,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
