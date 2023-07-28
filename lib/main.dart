import 'package:ecommerce_app/core/resources/theme.dart';
import 'package:ecommerce_app/core/utils/app_router.dart';
import 'package:ecommerce_app/features/Cart/presentation/view_models/cubit/cart_cubit.dart';
import 'package:ecommerce_app/features/Home/presentation/view_models/home_cubit/home_cubit.dart';
import 'package:ecommerce_app/features/Home/presentation/view_models/home_layout_cubit/home_layout_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(MyApp(
    appRouter: AppRouter(),
  ));
}

class MyApp extends StatelessWidget {
  final AppRouter appRouter;

  const MyApp({super.key, required this.appRouter});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (BuildContext context) => HomeLayoutCubit()),
        BlocProvider(create: (BuildContext context) => HomeCubit()),
        BlocProvider(create: (BuildContext context) => CartCubit())
      ],
      child: ScreenUtilInit(
          designSize: const Size(360, 680),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, child) {
            return MaterialApp(
              title: 'Flutter Demo',
              debugShowCheckedModeBanner: false,
              theme: getThemeData(),
              onGenerateRoute: appRouter.generateRoute,
            );
          }),
    );
  }
}
