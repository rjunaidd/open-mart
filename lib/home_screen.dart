import 'package:flutter/material.dart';
import 'package:open_mart/components/serach_appbar.dart';
import 'package:open_mart/drawer/drawers.dart';
import 'package:open_mart/product_list/product_list_screen.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal.shade400,
          title: SearchBar(),
          actions: [
            IconButton(
                onPressed: (){},
                icon: Icon(Icons.shopping_cart)),
          ],
        ),
        drawer:const Drawers(),
        body:const ProductListScreen(product: '',),
      ),
    );
  }
}
