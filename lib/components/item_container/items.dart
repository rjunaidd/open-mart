import 'package:flutter/material.dart';

class ItemContainer extends StatefulWidget {
  const ItemContainer({super.key});

  @override
  State<ItemContainer> createState() => _ItemContainerState();
}

class _ItemContainerState extends State<ItemContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(),
    );
  }
}
