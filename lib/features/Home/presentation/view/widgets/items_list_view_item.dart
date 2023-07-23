import 'package:ecommerce_app/core/resources/strings.dart';
import 'package:ecommerce_app/features/Home/data/models/product_model.dart';
import 'package:ecommerce_app/features/Home/presentation/view/widgets/price-of_kg.dart';
import 'package:ecommerce_app/features/Home/presentation/view_models/home_cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemsListViewItem extends StatelessWidget {
  const ItemsListViewItem(
      {super.key, required this.product, required this.ctx});
  final Product product;
  final BuildContext ctx;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var size = MediaQuery.sizeOf(context);
    return GestureDetector(
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
                  PriceOfKg(fontSize: 16.sp, price: product.price!),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      HomeCubit.get(ctx).addItemToCart(product);
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
    );
  }
}
