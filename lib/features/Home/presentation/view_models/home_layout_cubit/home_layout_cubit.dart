import 'package:ecommerce_app/features/Cart/presentation/view/pages/cart_view.dart';
import 'package:ecommerce_app/features/Home/presentation/view/widgets/items_list_view.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_layout_state.dart';

class HomeLayoutCubit extends Cubit<LandingPageState> {
  HomeLayoutCubit() : super(LandingPageInitial());

  static HomeLayoutCubit get(context) =>
      BlocProvider.of<HomeLayoutCubit>(context);

  int bottomNavCurrentIndex = 0;

  List<Widget> navigationBarPages = [
    const ItemsListView(),
    const CartView(),
  ];

  void changeNavBarTap(index) {
    bottomNavCurrentIndex = index;
    emit(TapChanged());
  }
}
