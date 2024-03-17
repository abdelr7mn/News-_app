import 'package:flutter/material.dart';
import 'package:news_app/widgets/category_model.dart';

class categrycard extends StatelessWidget {
  const categrycard({super.key, required this.catrgory});
  final Categrymodel catrgory;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 7),
      child: Container(
        height: 110,
        width: 187,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage(catrgory.image)),
            color: Color.fromARGB(255, 68, 178, 173),
            borderRadius: BorderRadius.circular(20)),
        child: Center(
            child: Text(
          catrgory.categoryName,
          style: TextStyle(fontSize: 27, color: Colors.white),
        )),
      ),
    );
  }
}
