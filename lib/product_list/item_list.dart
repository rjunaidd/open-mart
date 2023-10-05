import 'package:flutter/material.dart';
import 'package:open_mart/product_list/products.dart';


class ItemListScreen extends StatelessWidget {
  final Product product;

 const ItemListScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.Name),
      ),
      body: ListView.builder(
        itemCount: product.items.length,
        itemBuilder: (context, index) {
          final item = product.items[index];
          return buildItemTile(item);
        },
      ),
    );
  }

  Widget buildItemTile(Item Item) {
    return Card(
      elevation: 10,
      child: ListTile(
        title: Text(Item.name),
        subtitle: Text('\$${Item.price.toStringAsFixed(2)}'),
        leading: Image.asset(
          Item.imagePath,
          width: 72, // Adjust the width as needed
          height: 72, // Adjust the height as needed
          fit: BoxFit.cover,
        ),
        // Add item details or actions here...
      ),
    );
  }
}
