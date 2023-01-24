import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class Business extends StatelessWidget {
  const Business({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getbusinessNews(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return ListView.builder(
              itemBuilder: ((context, index) {
                var m = Businesslist![index];
                return buildartical(
                    title: m['title'],
                    subtitle: m['description'],
                    Image_net: m['urlToImage']);
              }),
              itemCount: Businesslist!.length,
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        });
  }
}
