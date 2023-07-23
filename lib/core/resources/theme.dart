import 'package:ecommerce_app/core/resources/colors.dart';
import 'package:flutter/material.dart';

ThemeData getThemeData() {
  return ThemeData(
      //add app colors
      primaryColor: ColorsApp.primaryColor,
      secondaryHeaderColor: ColorsApp.secondryColor,
      disabledColor: ColorsApp.disabledColor,
      dividerColor: ColorsApp.borderColor,
      scaffoldBackgroundColor: ColorsApp.white,

      // add appBar theme
      appBarTheme: const AppBarTheme(
          centerTitle: true,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          backgroundColor: ColorsApp.white,
          titleTextStyle: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20)),

      // add text theme
      textTheme: const TextTheme(
          titleLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          titleMedium: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          bodyLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
          bodyMedium: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
          bodySmall: TextStyle(
              fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black),
          displayLarge: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: ColorsApp.white),
          displayMedium: TextStyle(
              fontSize: 12, fontWeight: FontWeight.w600, color: Colors.black),
          displaySmall: TextStyle(fontSize: 12, color: ColorsApp.white)));
}
