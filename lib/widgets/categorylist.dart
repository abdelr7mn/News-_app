import 'package:flutter/widgets.dart';
import 'package:news_app/widgets/category_card.dart';
import 'package:news_app/widgets/category_model.dart';

class categorylistview extends StatelessWidget {
  const categorylistview({
    super.key,
  });
  final List<Categrymodel> categories = const [
    Categrymodel(image: 'assets/sports.jpg', categoryName: 'Sports'),
    Categrymodel(image: 'assets/technology.jpg', categoryName: 'Technology'),
    Categrymodel(image: 'assets/business.jpg', categoryName: 'Business'),
    Categrymodel(image: 'assets/science.jpg', categoryName: 'Science'),
    Categrymodel(image: 'assets/healthy.jpg', categoryName: 'Health'),
    Categrymodel(image: 'assets/postice.jpg', categoryName: 'Politics'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, Index) {
            return categrycard(
              catrgory: categories[Index],
            );
          }),
    );
  }
}
