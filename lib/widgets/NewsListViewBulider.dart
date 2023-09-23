
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/articl_model.dart';

import '../services/news_service.dart';
import 'news_listview.dart';
class NewsListViewBulider extends StatefulWidget {
  const NewsListViewBulider({
    super.key, required this.category,
  });
  final String category;
  @override
  State<NewsListViewBulider> createState() => _NewsListViewBuliderState();
}

class _NewsListViewBuliderState extends State<NewsListViewBulider> {
  var future;
  @override
  void initState() {
    super.initState();
      future = NewsServices(Dio()).getNews(category: widget.category);

  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticlModel>>(
      future: future,
      builder: (context,snapshot){
        if (snapshot.hasData) {
        return NewsListView(
        articles: snapshot.data ?? []
    );
    }else if(snapshot.hasError){
      return const Padding(
        padding: EdgeInsets.only(left: 8),
        child: Row(
          children: [
            Center(child: Text('Oops there is an error, try later',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,))),
            Icon(Icons.mood_bad, color: Colors.red, size: 25)
          ],
        ),
      );
    }else{
      return const SliverFillRemaining(child: Center(child: CircularProgressIndicator(),),);
    }
      });
  }
}
