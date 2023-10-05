import 'package:flutter/material.dart';
import 'package:open_mart/product_list/products.dart';

class ProductDetailScreen extends StatelessWidget {
    final Item item;
    final Product product;
   const ProductDetailScreen({required this.item, required this.product});

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text(item.name),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin:const EdgeInsets.all(10),
                    padding:const EdgeInsets.all(10),
                    child: Image.asset(
                      item.imagePath,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Price: ${item.price.toStringAsFixed(0)}',
                    style:const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, fontFamily: "Skranji"),
                  ),
                  const  SizedBox(height: 16,),
                  Text('Description: ${item.Description}'),

                ],
              ),
            ),
            const  SizedBox(height: 16),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const  SnackBar(
                      content: Text('Item added to cart'),
                      duration: Duration(seconds: 2),
                    ),
                  );
                },
                child:const Text('Add to Cart'),
              ),


            ),
          ],
        ),
      );
    }
}
