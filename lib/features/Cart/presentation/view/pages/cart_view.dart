import 'package:ecommerce_app/features/Cart/presentation/view/widgets/cart_products_list_view.dart';
import 'package:ecommerce_app/features/Cart/presentation/view/widgets/cost_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.h),
      child: Column(
        children: [
          const Expanded(child: CartProductsListView()),
          Divider(
            thickness: 2,
            color: Theme.of(context).dividerColor,
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * .088,
          ),
          CostSection(),
        ],
      ),
    );
  }
}
