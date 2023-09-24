import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  final TextEditingController _searchController = TextEditingController();
   SearchBar({super.key });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(

        decoration: InputDecoration(
          hintText: "Search ....",
          hintStyle: TextStyle(
            color: Colors.white
          ),
          suffixIcon: IconButton(
            icon:const Icon(Icons.clear, color: Colors.white,),
            onPressed: ()=> _searchController,
          ),
          prefixIcon: IconButton(
            icon: Icon(Icons.search, color: Colors.white),
            onPressed: () {
              // Perform the search here
            },
          ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),

    ),
        ),
      ),
    );
  }
}
