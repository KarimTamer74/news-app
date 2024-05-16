import 'package:newsapp/models/category_model.dart';
import 'package:newsapp/views/category_screen.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return CategoryScreen(
            category: category.text,
          );
        }));
      },
      child: Container(
        margin: EdgeInsets.only(right: 5),
        width: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.yellow,
            image: DecorationImage(
                image: AssetImage(category.image), fit: BoxFit.fill)),
        child: Center(
          child: Text(
            category.text,
            style: TextStyle(
                fontWeight: FontWeight.w400, color: Colors.yellowAccent),
          ),
        ),
      ),
    );
  }
}
