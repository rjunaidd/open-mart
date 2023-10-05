import 'package:flutter/material.dart';
import 'package:open_mart/product_list/item_list.dart';
import 'package:open_mart/product_list/products.dart';

class ProductListScreen extends StatelessWidget {
 final String product;
  const ProductListScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SizedBox(
          height: 250,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: products.length, // Use products.length instead of Product.length
            itemBuilder: (context, index) {
              final product = products[index]; // Access products list

              return InkWell(
                onTap: () {
                  // Handle tapping on a product
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ItemListScreen(product: product),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Display the product image here
                          Image.asset(
                            product.imagePick, // Use the product's image URL
                            width: 72, // Adjust the width as needed
                            height: 72, // Adjust the height as needed
                          ),
                         const SizedBox(height: 8.0),
                          Text(product.Name),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
