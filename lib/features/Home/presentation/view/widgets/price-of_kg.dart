import 'package:flutter/material.dart';

class PriceOfKg extends StatelessWidget {
  const PriceOfKg({super.key, required this.fontSize, required this.price});
  final double fontSize;
  final String price;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return RichText(
        text: TextSpan(
            text: '\$$price',
            style: TextStyle(
                color: theme.secondaryHeaderColor,
                fontSize: fontSize,
                fontWeight: FontWeight.w500),
            children: [
          TextSpan(
            text: ' \/ kg',
            style: TextStyle(
                color: theme.disabledColor,
                fontSize: fontSize,
                fontWeight: FontWeight.w400),
          )
        ]));
  }
}
