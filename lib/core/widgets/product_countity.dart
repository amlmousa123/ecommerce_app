import 'package:ecommerce_app/core/resources/colors.dart';
import 'package:flutter/material.dart';

class ProductCountityCounter extends StatelessWidget {
  const ProductCountityCounter(
      {super.key, required this.width, required this.size});
  final double width;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.remove,
                color: ColorsApp.white,
                size: size,
              ),
            ),
            Text(
              '1',
              style: TextStyle(fontSize: size, color: ColorsApp.white),
            ),
            GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.add,
                color: ColorsApp.white,
                size: size,
              ),
            )
          ],
        ));
  }
}
