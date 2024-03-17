import 'dart:math';
import 'package:news_app/widgets/categorylist.dart';
import 'package:news_app/widgets/posts.dart';
import 'widgets/category_card.dart';
import 'package:flutter/material.dart';
import 'widgets/newslistview.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 235, 235, 235),
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('News', style: TextStyle(color: Colors.black)),
              Text(' cloud',
                  style: TextStyle(color: Color.fromARGB(255, 255, 207, 33))),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 14,
          ),
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: categorylistview(),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 20,
                ),
              ),
              SliverList(
                  delegate: SliverChildBuilderDelegate(childCount: 15,
                      (context, index) {
                return const Newslistview();
              })),
            ],
          ),
        ));
  }
}
