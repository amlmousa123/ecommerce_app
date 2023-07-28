import 'package:ecommerce_app/core/resources/strings.dart';
import 'package:ecommerce_app/features/Cart/presentation/view/pages/cart_view.dart';
import 'package:ecommerce_app/features/Home/data/models/product_model.dart';
import 'package:ecommerce_app/features/Home/presentation/view/pages/home_view.dart';
import 'package:ecommerce_app/features/Home/presentation/view/pages/item_details_%20view.dart';
import 'package:flutter/material.dart';

class AppRouter {
  // ignore: body_might_complete_normally_nullable
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutersName.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeView());

      case RoutersName.itemDetailsScreen:
        final product = settings.arguments as Product;
        return MaterialPageRoute(
            builder: (_) => ItemDetailsView(
                  product: product,
                ));

      case RoutersName.cartScreen:
        return MaterialPageRoute(builder: (_) => const CartView());
    }
  }
}
