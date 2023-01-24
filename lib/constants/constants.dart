import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

Widget buildartical({
  String? title,
  String? subtitle,
  // ignore: non_constant_identifier_names
  String? Image_net,
}) {
  title ??= 'لايوجد عنوان';
  subtitle ??= 'نعتذر لا يوجد مقال';
  Image_net ??=
      'https://media.istockphoto.com/id/1264074047/vector/breaking-news-background.jpg?s=612x612&w=0&k=20&c=C5BryvaM-X1IiQtdyswR3HskyIZCqvNRojrCRLoTN0Q=';
  return Container(
    decoration: const BoxDecoration(
      border: Border(
        top: BorderSide(width: 1),
        bottom: BorderSide(width: 1),
        right: BorderSide(width: 1),
        left: BorderSide(width: 1),
      ),
    ),
    child: ListTile(
      // tileColor: Color.fromARGB(255, 134, 184, 224),
      leading: Image.network(
        Image_net,
        width: 100,
        height: 100,
        scale: 1,
      ),
      //leading: Icon(Icons.person),
      title: Text(
        title,
        style:
            const TextStyle(fontSize: 20, color: Color.fromARGB(255, 23, 129, 216)),
      ),
      subtitle: Text(
        subtitle,
        style: const TextStyle(fontSize: 15),
      ),
    ),
  );
}

// ignore: non_constant_identifier_names
List? AllNews = [];
// ignore: non_constant_identifier_names
List? Businesslist = [];
// ignore: non_constant_identifier_names
List? SportsList = [];

getNews() async {
  // ignore: avoid_print
  print('started get news');
  //بعمل متغير من نوع فار واخزن فية قيمة الطلب
  var response = await http.get(Uri.parse(
      'https://newsapi.org/v2/top-headlines?country=eg&apiKey=474f2c40eb06440998c3a6d3145ae3ef'));
  // ignore: avoid_print
  print('finshed get news');
  // ignore: avoid_print
  print(response.statusCode);
  // ignore: avoid_print
  print(jsonDecode(response.body)['articles']);
  AllNews = jsonDecode(response.body)['articles'];
}
getbusinessNews() async {
  // ignore: avoid_print
  print('started get news');
  //بعمل متغير من نوع فار واخزن فية قيمة الطلب
  var response = await http.get(Uri.parse(
      'https://newsapi.org/v2/top-headlines?country=eg&category=business&apiKey=474f2c40eb06440998c3a6d3145ae3ef'));
  // ignore: avoid_print
  print('finshed get news');
  // ignore: avoid_print
  print(response.statusCode);
  // ignore: avoid_print
  print(jsonDecode(response.body)['articles']);
  Businesslist = jsonDecode(response.body)['articles'];
}
getsportsNews() async {
  // ignore: avoid_print
  print('started get news');
  //بعمل متغير من نوع فار واخزن فية قيمة الطلب
  var response = await http.get(Uri.parse(
      'https://newsapi.org/v2/top-headlines?country=eg&category=sports&apiKey=474f2c40eb06440998c3a6d3145ae3ef'));
  // ignore: avoid_print
  print('finshed get news');
  // ignore: avoid_print
  print(response.statusCode);
  // ignore: avoid_print
  print(jsonDecode(response.body)['articles']);
  SportsList = jsonDecode(response.body)['articles'];
}
