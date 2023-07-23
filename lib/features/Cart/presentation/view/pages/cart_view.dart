import 'package:ecommerce_app/features/Cart/presentation/view/widgets/cart_products_list_view.dart';
import 'package:ecommerce_app/features/Cart/presentation/view/widgets/cost_section.dart';
import 'package:ecommerce_app/features/Home/presentation/view_models/home_cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.h),
      child: ListView(
        children: [
          BlocProvider(
            create: (context) => HomeCubit(),
            child: CartProductsListView(),
          ),
          Divider(
            thickness: 2,
            color: Theme.of(context).dividerColor,
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * .088,
          ),
          const CostSection(),
        ],
      ),
    );
  }
}
