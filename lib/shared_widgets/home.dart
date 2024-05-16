import 'package:newsapp/shared_widgets/category_list.dart';
import 'package:newsapp/shared_widgets/list_view_builder.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title:const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'News',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
              Text(
                'Cloud',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.orange),
              )
            ],
          )),
      body:const Padding(
        padding: EdgeInsets.all(12.0),
        child: CustomScrollView(slivers: [
          SliverToBoxAdapter(child: HorizontalListView()),
         SliverToBoxAdapter(
            child: Gap(
              10,
              color: Colors.white,
            ),
          ),
          ListViewbuilder(
            category: 'general',
          )
        ]),
      ),
    );
  }
}
