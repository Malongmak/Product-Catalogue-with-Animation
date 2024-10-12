import 'package:flutter/material.dart';
import 'product.dart';

class AnimatedProductCard extends StatefulWidget {
  final Product product;

  const AnimatedProductCard({super.key, required this.product});

  @override
  // ignore: library_private_types_in_public_api
  _AnimatedProductCardState createState() => _AnimatedProductCardState();
}

class _AnimatedProductCardState extends State<AnimatedProductCard> {
  double _scale = 1.0; // Scale factor for animation

  void _onTapDown(TapDownDetails details) {
    setState(() {
      _scale = 0.95; // Scale down on tap
    });
  }

  void _onTapUp(TapUpDetails details) {
    setState(() {
      _scale = 1.0; // Scale back up on release
    });
  }

  void _onTapCancel() {
    setState(() {
      _scale = 1.0; // Scale back up on cancel
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: _onTapDown,
      onTapUp: _onTapUp,
      onTapCancel: _onTapCancel,
      onTap: () {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text('You selected ${widget.product.name}'),
            );
          },
        );
      },
      child: Transform.scale(
        scale: _scale, // Apply the scaling effect
        child: Card(
          elevation: 5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(widget.product.imageUrl),
              const SizedBox(height: 8),
              Text(widget.product.name),
              const SizedBox(height: 4),
              Text('\$${widget.product.price.toStringAsFixed(2)}'),
            ],
          ),
        ),
      ),
    );
  }
}
