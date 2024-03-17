import 'package:dio/dio.dart';

class NewsService {
  final Dio dio;
  
  NewsService(this.dio);

void getGenralsNews() async {
  final response = await dio.get('https://dart.dev');
  print(response);
}

void getSportsNews() async {
  final response = await dio.get('https://dart.dev');
  print(response);
}
}