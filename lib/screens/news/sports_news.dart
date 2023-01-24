// ignore: file_names
import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class Sports extends StatelessWidget {
  const Sports({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getsportsNews(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return ListView.builder(
              itemBuilder: ((context, index) {
                var m = SportsList![index];
                return buildartical(
                    title: m['title'],
                    subtitle: m['description'],
                    Image_net: m['urlToImage']);
              }),
              itemCount: SportsList!.length,
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        });
  }
}
