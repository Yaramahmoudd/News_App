
import 'package:flutter/material.dart';
import 'package:news_app/widgets/categories_listview.dart';

import '../widgets/NewsListViewBulider.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "News",
              style: TextStyle(color: Colors.black),
            ),
            Text(
              "Cloud",
              style: TextStyle(color: Colors.orange),
            ),
          ],
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: const Padding(
        padding:  EdgeInsets.all(8.0),
        child:  CustomScrollView(
          physics:  BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: CategoriesListView(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 20,),
            ),
            NewsListViewBulider(category: 'general'),
          ],
        ),
      ),
        );
  }
}

