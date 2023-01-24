import 'package:flutter/material.dart';


// ignore: must_be_immutable
class CardDrawer extends StatelessWidget {
  CardDrawer({super.key, required this.title, required this.onpressed});

  String? title;
  VoidCallback? onpressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpressed,
      child: Card(
        elevation: 10,
        shadowColor: Colors.black,
        child: Column(children: [
          ListTile(
            title: Text(
              title!,
              style: const TextStyle(
                  color: Colors.black, fontWeight: FontWeight.bold),
            ),
            trailing: const Icon(Icons.arrow_circle_right_sharp),
          ),
        ]),
      ),
    );
  }
}
