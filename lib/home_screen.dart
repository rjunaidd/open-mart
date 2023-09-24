import 'package:flutter/material.dart';
import 'package:open_mart/components/serach_appbar.dart';
import 'package:open_mart/drawer/drawers.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.teal.shade400,
        title: SearchBar(),
        actions: [
          IconButton(onPressed: (){}, icon:const Icon(Icons.shopping_cart))
        ],
      ),
      drawer: Drawers(),
    );
  }
}
