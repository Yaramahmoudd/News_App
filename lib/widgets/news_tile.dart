import 'package:flutter/material.dart';
import 'package:news_app/models/articl_model.dart';
import 'package:news_app/widgets/web_view.dart';
class NewsTile extends StatelessWidget {
  const  NewsTile({super.key, required this.articlModel});
  final ArticlModel articlModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return Web_View();
        },),);
        },
        child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.network(articlModel.image ?? 'https://qph.cf2.quoracdn.net/main-qimg-cd1b48077e71154af11a7db16e482dad-lq',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 10),
              Text(articlModel.title,
              style: const TextStyle(fontWeight: FontWeight.w500,fontSize: 18,),maxLines: 2,overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 10,),
              Text(articlModel.subTitle ?? '',
              style: const TextStyle(fontWeight: FontWeight.w500,fontSize: 16,color: Colors.black54),maxLines: 2,overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
      ),
    );
    
  }
}