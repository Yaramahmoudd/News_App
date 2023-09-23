
import 'package:flutter/material.dart';

import '../models/articl_model.dart';
import 'news_tile.dart';

class NewsListView extends StatelessWidget {
  final List<ArticlModel> articles ;
    NewsListView({super.key, required this.articles});
  @override
  Widget build(BuildContext context) {
    return  SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
      return  NewsTile(articlModel: articles[index]);
    },
    childCount: articles.length,
    ),
    
    );
  }
}
