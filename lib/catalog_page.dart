import 'package:flutter/material.dart';
import 'product_grid.dart'; // Import the product grid

class CatalogPage extends StatelessWidget {
  final Function toggleTheme;

  const CatalogPage({super.key, required this.toggleTheme});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Store'),
        actions: [
          IconButton(
            icon: const Icon(Icons.brightness_6),
            onPressed: () => toggleTheme(),
          ),
        ],
      ),
      body: ProductGrid(), // Use the animated product grid
    );
  }
}
