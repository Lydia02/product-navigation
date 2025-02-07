import 'package:flutter/material.dart';
import 'product.dart';

class ProductDetailsPage extends StatelessWidget {
  final Product product;

  ProductDetailsPage({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center, // Centers everything vertically
        children: [
          // Top Section: Product Banner
          Container(
            color: Colors.blue.shade300,
            width: double.infinity,
            height: 200,
            child: Center(
              child: Text(
                product.name.toLowerCase(),
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          // Details Section
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center, // Align text to center horizontally
              children: [
                Text(
                  product.name,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center, // Center-align text horizontally
                ),
                SizedBox(height: 16),
                Text(
                  product.description,
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.center, // Center-align text horizontally
                ),
                SizedBox(height: 16),
                Text(
                  'Price: \$${product.price}',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Spacer(),
          // Bottom Section: Star Ratings
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              3,
                  (index) => Icon(
                Icons.star,
                color: Colors.redAccent,
                size: 30,
              ),
            ),
          ),
          SizedBox(height: 32),
        ],
      ),
    );
  }
}
