import 'package:flutter/material.dart';

class ShoppingCartButton extends StatefulWidget {
  const ShoppingCartButton({super.key});

  @override
  State<ShoppingCartButton> createState() => _ShoppingCartButtonState();
}

class _ShoppingCartButtonState extends State<ShoppingCartButton> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Cart'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              isSelected = !isSelected;
            });
          },
          child: AnimatedContainer(
            curve: Curves.slowMiddle,
            duration: const Duration(milliseconds: 1000),
            width: isSelected ? 250 : 80,
            height: 80.0,
            decoration: BoxDecoration(
              color: isSelected ? Colors.green : Colors.blue,
              borderRadius: isSelected
                  ? BorderRadius.circular(40.0)
                  : BorderRadius.circular(10.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  isSelected ? Icons.check : Icons.shopping_cart,
                  color: Colors.white,
                ),
                if (isSelected)
                  const Text(
                    "Added to Cart",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
