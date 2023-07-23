import 'package:ecommerce_app/core/utils/assets.dart';
import 'package:ecommerce_app/features/Home/data/models/product_model.dart';

class ProductRepo {
  static List<Product> products = [
    Product(imageUrl: apple, name: 'Apple', price: '5.00', description: ''),
    Product(imageUrl: banana, name: 'Banana', price: '2.50', description: ''),
    Product(imageUrl: apricot, name: 'Apricot', price: '2.80', description: ''),
    Product(
        imageUrl: greenApple,
        name: 'Green Apple',
        price: '4.00',
        description: ''),
    Product(
        imageUrl: strawberry,
        name: 'Strawberry',
        price: '5.00',
        description:
            'The strawberry is a succulent and fragrant fruit of bright red colour, obtained from the plant with the same name. In the West it is considered as the " queen of the fruit". It is eaten raw and used to make jam, stewed fruit... It is also used with medicinal purposes, since it has excellent benefits for health.'),
    Product(imageUrl: kiwi, name: 'Kiwi', price: '6.00', description: ''),
    Product(imageUrl: orange, name: 'Orange', price: '1.70', description: ''),
    Product(
        imageUrl: redGrapes,
        name: 'Red Grapes',
        price: '4.00',
        description: ''),
    Product(imageUrl: peach, name: 'Peach', price: '3.00', description: ''),
    Product(
        imageUrl: pomegranate,
        name: 'Pomegranate',
        price: '3.20',
        description: ''),
  ];
}
