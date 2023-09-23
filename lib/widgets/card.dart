import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/views/category_view.dart';

class card extends StatelessWidget {
  const card({super.key,required this.cat});
    final CategoryModel cat;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return Category_View(category: cat.CategoryName,);
        },),);
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 8,),
        child: Container(
          height: 100,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: AssetImage(cat.imageURL), fit: BoxFit.fill),
          ),
          child: Center(
              child: Text(
            cat.CategoryName,
            style:const TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),),
        ),
      ),
    );
  }
}
