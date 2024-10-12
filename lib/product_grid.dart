import 'package:flutter/material.dart';
import 'package:flutter_store/animated_product_card.dart';
import 'product.dart';

class ProductGrid extends StatelessWidget {
  final List<Product> products = [
    Product(
        name: 'Product 1',
        imageUrl: 'https://via.placeholder.com/150',
        price: 29.99),
    Product(
        name: 'Product 2',
        imageUrl: 'https://via.placeholder.com/150',
        price: 49.99),
    Product(
        name: 'Product 3',
        imageUrl: 'https://via.placeholder.com/150',
        price: 19.99),
    Product(
        name: 'Product 4',
        imageUrl: 'https://via.placeholder.com/150',
        price: 39.99),
    Product(
        name: 'Product 5',
        imageUrl: 'https://via.placeholder.com/150',
        price: 59.99),
    Product(
        name: 'Product 6',
        imageUrl: 'https://via.placeholder.com/150',
        price: 15.99),
    // Add more products as needed
  ];

  ProductGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.7,
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        final product = products[index];
        return FadeInAnimation(
            index: index, child: AnimatedProductCard(product: product));
      },
    );
  }
}

class FadeInAnimation extends StatelessWidget {
  final Widget child;
  final int index;

  const FadeInAnimation({super.key, required this.child, required this.index});

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: 1.0,
      duration: Duration(milliseconds: 300 + index * 100), // Staggered delay
      child: child,
    );
  }
}
