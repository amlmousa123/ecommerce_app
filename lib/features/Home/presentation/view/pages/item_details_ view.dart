import 'package:ecommerce_app/core/widgets/product_countity.dart';
import 'package:ecommerce_app/features/Home/data/models/product_model.dart';
import 'package:ecommerce_app/features/Home/presentation/view/widgets/add_cart_button.dart';
import 'package:ecommerce_app/features/Home/presentation/view/widgets/price-of_kg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemDetailsView extends StatelessWidget {
  const ItemDetailsView({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).textTheme;
    var size = MediaQuery.sizeOf(context);
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: const Text('Product Details'),
            ),
            body: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(child: Image.asset(product.imageUrl!)),
                  SizedBox(
                    height: size.height * .029,
                  ),
                  Text(
                    product.name!,
                    style: theme.titleLarge,
                  ),
                  SizedBox(
                    height: size.height * .029,
                  ),
                  Row(
                    children: [
                      PriceOfKg(
                        fontSize: 20.sp,
                        price: product.price.toString(),
                      ),
                      const Spacer(),
                      ProductCountityCounter(
                        width: size.width * .25,
                        size: 20.sp,
                      )
                    ],
                  ),
                  SizedBox(
                    height: size.height * .029,
                  ),
                  Text('About of the product',
                      style: theme.bodyMedium!
                          .copyWith(fontWeight: FontWeight.w500)
                      // textAlign: TextAlign.start,
                      ),
                  Text(
                    product.description!,
                    style: theme.bodyMedium,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const Spacer(),
                  AddCartButton(
                    product: product,
                  ),
                ],
              ),
            )));
  }
}
