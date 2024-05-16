import 'package:newsapp/models/news_model.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({super.key, required this.item});
  final NewsModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Column(children: [
        Image.network(
          item.image ??
              'https://th.bing.com/th/id/R.f55c4dd6eb4903b54bbbfa5743a3b4d1?rik=6Ra9n0NodLi64g&riu=http%3a%2f%2finfparts.com%2fwp-content%2fuploads%2f2016%2f01%2fproducts-UNAVAILABLE.jpg&ehk=jUdzhsuco1W31gNoHzbjjWS1xku04f3wnZD4nDRzKF8%3d&risl=&pid=ImgRaw&r=0',
        ),
        Text(
          item.title,
          textAlign: TextAlign.start,
          style: const TextStyle(
              fontSize: 20, color: Colors.black, fontFamily: 'Pacifico'),
        ),
        Text(
          item.subtitle ?? '',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(color: Colors.grey, fontSize: 16),
        ),
        const Divider(
          thickness: 3,
          color: Colors.black87,
        ),
        const Gap(80)
      ]),
    );
  }
}
