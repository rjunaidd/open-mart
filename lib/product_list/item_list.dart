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
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment:CrossAxisAlignment.start ,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Image.asset(
                  height: 100,
                  width: 100,
                  Item.imagePath,
                  fit: BoxFit.cover,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Item.name ,
                        style:const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                      const SizedBox(
                        height: 5
                      ),
                      Text('${Item.price.toStringAsFixed(2)}' ,
                      style:const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600
                      ),
                      ),
                      const SizedBox(
                          height: 5
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          height: 35,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.teal.shade300,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child:const Center(
                              child: Text("Add to cart",
                          style: TextStyle(
                            color: Colors.white
                          ),
                              ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//
// ListTile(
// title: Text(Item.name),
// subtitle: Text('${Item.price.toStringAsFixed(2)}'),
// leading: Image.asset(
// Item.imagePath,
// width: 72, // Adjust the width as needed
// height: 72, // Adjust the height as needed
// fit: BoxFit.cover,
// ),
// // Add item details or actions here...
// ),