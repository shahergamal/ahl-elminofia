import 'package:flutter/material.dart';

import '../news/news_home.dart';

class News extends StatelessWidget {
  const News({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NewsHome(),
    );
  }
}
