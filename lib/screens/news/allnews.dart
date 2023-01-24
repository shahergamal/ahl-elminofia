import 'package:flutter/material.dart';

import '../../constants/constants.dart';

// ignore: camel_case_types
class All_News extends StatelessWidget {
  const All_News({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getNews(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return ListView.builder(
              itemBuilder: ((context, index) {
                var m = AllNews![index];
                return buildartical(
                    title: m['title'],
                    subtitle: m['description'],
                    Image_net: m['urlToImage']);
              }),
              itemCount: AllNews!.length,
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        });
  }
}
