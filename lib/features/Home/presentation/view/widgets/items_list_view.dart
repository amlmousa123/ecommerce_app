import 'package:ecommerce_app/features/Home/data/models/product_model.dart';
import 'package:ecommerce_app/features/Home/presentation/view/widgets/items_list_view_item.dart';
import 'package:ecommerce_app/features/Home/presentation/view_models/home_cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemsListView extends StatelessWidget {
  const ItemsListView({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        var cubit = HomeCubit.get(context)..getProducts();
        List<Product> items = cubit.products;
        return Padding(
          padding: EdgeInsets.all(size.height * .029),
          child: GridView.builder(
            itemCount: items.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: size.height * .028,
              mainAxisSpacing: size.height * .029,
            ),
            itemBuilder: (context, index) {
              return ItemsListViewItem(
                product: items[index],
                ctx: context,
              );
            },
          ),
        );
      },
    );
  }
}
