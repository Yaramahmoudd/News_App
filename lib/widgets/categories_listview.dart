import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';

import 'card.dart';

class CategoriesListView extends StatelessWidget {
    const CategoriesListView({super.key});
    final List<CategoryModel> categories =const [
      CategoryModel(imageURL: "assets/business.avif", CategoryName: "Business"),
      CategoryModel(imageURL: "assets/entertaiment.avif", CategoryName: "Entertainment"),
      CategoryModel(imageURL: "assets/health.avif", CategoryName: "Health"),
      CategoryModel(imageURL: "assets/science.avif", CategoryName: "Science"),
      CategoryModel(imageURL: "assets/sports.avif", CategoryName: "Sports"),
      CategoryModel(imageURL: "assets/technology.jpeg", CategoryName: "Technology"),
      CategoryModel(imageURL: "assets/general.avif", CategoryName: "General"),
    ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 100,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
          return  card(cat: categories[index],);
        },
        ),
      );
  }
}