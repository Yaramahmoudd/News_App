
import 'package:flutter/material.dart';
import 'package:news_app/widgets/NewsListViewBulider.dart';
class Category_View extends StatelessWidget {
  const Category_View({super.key, required this.category});
    final String category;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SizedBox(
        child: CustomScrollView(
          slivers: [
            NewsListViewBulider(category: category),
          ],
        ),
      ),
    );
  }
}