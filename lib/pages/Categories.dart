import 'package:flutter/material.dart';
class Categories extends StatefulWidget {
  static const String id = "categories";
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Categories"),
      ),
    );
  }
}
