import 'package:ecommerce_app/features/Home/presentation/view_models/home_layout_cubit/home_layout_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: BlocBuilder<HomeLayoutCubit, LandingPageState>(
      builder: (context, state) {
        var cubit = HomeLayoutCubit.get(context);
        int selectedIndex = cubit.bottomNavCurrentIndex;
        return Scaffold(
          appBar: AppBar(
            title: Text(selectedIndex == 0 ? 'Fruits' : 'Cart'),
          ),
          body: cubit.navigationBarPages.elementAt(selectedIndex),
          bottomNavigationBar: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart), label: 'Cart')
            ],
            selectedItemColor: Theme.of(context).primaryColor,
            currentIndex: selectedIndex,
            onTap: cubit.changeNavBarTap,
          ),
        );
      },
    ));
  }
}
