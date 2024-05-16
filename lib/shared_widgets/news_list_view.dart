import 'package:newsapp/components/news.dart';
import 'package:newsapp/models/news_model.dart';
import 'package:flutter/material.dart';

class VerticalListView extends StatelessWidget {
  VerticalListView({super.key, required this.articles});
  List<NewsModel> articles = [];

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: articles.length,
          (context, index) {
        return NewsCard(item: articles[index]);
      }),
    );
  }
}
