import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/home_view.dart';

void main() {
  runApp(const NewsApp());
}

final dio = Dio();

void getHttp() async {
  final response = await dio.get('https://dart.dev');
  print(response);
}


class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: (false), home: HomeView());
  }
}
