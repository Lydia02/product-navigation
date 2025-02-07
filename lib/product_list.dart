import 'package:flutter/material.dart';
import 'product_details.dart';
import 'product.dart';

class ProductListPage extends StatelessWidget {
  final List<Product> products = [
    Product('Pixel 1', 'Pixel is the most featureful phone ever', 800),
    Product('Laptop', 'Laptop is the most productive development tool', 2000),
    Product('Tablet', 'Tablet is the most useful device ever for meeting', 1500),
    Product('Pen Drive', 'Pen Drive is the most portable storage', 100),
    Product('Floppy Drive', 'Floppy Drive is the stylist phone ever', 50),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Navigation'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        ProductDetailsPage(product: products[index]),
                  ),
                );
              },
              child: Row(
                children: [
                  // Left Column: Large Product Name
                  Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: 120,
                    color: Colors.primaries[index % Colors.primaries.length]
                        .shade300,
                    child: Center(
                      child: Text(
                        products[index].name.toLowerCase(),
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  // Right Column: Product Details
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center, // Center vertically
                        crossAxisAlignment: CrossAxisAlignment.start, // Align text to the start
                        children: [
                          Text(
                            products[index].name,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            products[index].description,
                            style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Price: \$${products[index].price}',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: List.generate(
                              3,
                                  (i) => Icon(
                                Icons.star,
                                color: Colors.redAccent,
                                size: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
