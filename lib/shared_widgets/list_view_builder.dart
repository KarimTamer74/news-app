import 'package:dio/dio.dart';
import 'package:newsapp/models/news_model.dart';
import 'package:newsapp/services/news_services.dart';
import 'package:newsapp/shared_widgets/news_list_view.dart';
import 'package:flutter/material.dart';

class ListViewbuilder extends StatefulWidget {
 const ListViewbuilder({super.key, required this.category});
  final String category;
  @override
  State<ListViewbuilder> createState() => _ListViewbuilderState();
}

class _ListViewbuilderState extends State<ListViewbuilder> {
  var future;
  @override
  void initState() {
    
    super.initState();
    future = NewsServices(Dio()).getGeneralNews(widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<NewsModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return VerticalListView(articles: snapshot.data!);
          } else if (snapshot.hasError)
            // ignore: curly_braces_in_flow_control_structures
            return  const SliverToBoxAdapter(child: Text('error'));
          else
            // ignore: curly_braces_in_flow_control_structures
            return const SliverToBoxAdapter(
                child: Center(child: CircularProgressIndicator()));
        });
  }
}
