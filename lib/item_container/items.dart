import 'package:flutter/material.dart';
import 'package:open_mart/item_container/item_components.dart';

class ItemContainer extends StatefulWidget {
  const ItemContainer({super.key});

  @override
  State<ItemContainer> createState() => _ItemContainerState();
}

class _ItemContainerState extends State<ItemContainer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            ItemComponents(itemName: "Shirts"),
            ItemComponents(itemName: "Pents"),
            ItemComponents(itemName: "Trousers"),
            ItemComponents(itemName: "Shoes"),
            ItemComponents(itemName: "Perfumes"),
            ItemComponents(itemName: "Belts")
          ],
        ),
      ],
    );
  }
}
