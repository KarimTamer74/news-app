import 'package:newsapp/components/category_card.dart';
import 'package:newsapp/lists/category_list.dart';
import 'package:flutter/material.dart';

class HorizontalListView extends StatelessWidget {
 const HorizontalListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categoryList.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              category: categoryList[index],
            );
          }),
    );
  }
}
