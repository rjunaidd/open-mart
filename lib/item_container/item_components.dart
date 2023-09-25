import 'package:flutter/material.dart';

class ItemComponents extends StatelessWidget {
  final String itemName;
  const ItemComponents({super.key , required this.itemName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10 , vertical: 15),
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          color: Colors.teal.shade50,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            const Icon(Icons.shop , size: 40,color: Colors.teal,),
            const  SizedBox(
              height: 5,
            ),
            Text(
              itemName ,
              style:const TextStyle(
                color: Colors.teal,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: "Oswald"
            ),
            ),
          ],
        ),
      ),
    );
  }
}
