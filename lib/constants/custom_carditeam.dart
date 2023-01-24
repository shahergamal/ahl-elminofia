import 'package:flutter/material.dart';

import 'package:flutter_rating_bar/flutter_rating_bar.dart';

// ignore: must_be_immutable
class CustomCardIteam extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  CustomCardIteam(
      {this.title = 'اترك عنوان مناسب لنشاطك',
      this.subtitle = ' اترك وصف بسيط لخدمتك التى تقدمها❤️...',
      this.imagess =
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7cuMJk4cJVq7-VDjoB0cNbBhUvx_CyyudGA&usqp=CAU'});
  String? title;
  String? subtitle;
  String? imagess;

  @override
  State<CustomCardIteam> createState() => _CustomCardIteamState();
}

class _CustomCardIteamState extends State<CustomCardIteam> {
  bool clickable = true;
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Card(
        elevation: 4,
        shadowColor: Colors.black,
        child: LayoutBuilder(
          // ignore: non_constant_identifier_names
          builder: (ctx, Constraints) => Column(
            children: [
              ListTile(
                leading: ClipOval(
                  child: Image.network(
                    widget.imagess!,
                    fit: BoxFit.cover,
                    width: Constraints.maxWidth * .20,
                    height: Constraints.maxHeight * .99,
                  ),
                ),
                // ignore: sized_box_for_whitespace
                title: Container(
                  width: Constraints.maxWidth * .6,
                  child: Text(
                    widget.title!,
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
                subtitle: Text(
                  widget.subtitle!,
                  style: const TextStyle(fontSize: 14),
                  textDirection: TextDirection.rtl,
                ),
                isThreeLine: true,
                trailing: InkWell(
                  child: (clickable == true)
                      ? const Icon(
                          Icons.favorite_outline_outlined,
                          color: Colors.black,
                        )
                      : const Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                  onTap: () {
                    setState(() {
                      clickable = !clickable;
                    });
                  },
                ),
                dense: true,
                enabled: true,
                selectedColor: Colors.green,
              ),
              RatingBar.builder(
                initialRating: 0,
                itemSize: 30,
                itemCount: 5,
                itemBuilder: (context, index) {
                  switch (index) {
                    case 0:
                      return const Icon(
                        Icons.sentiment_very_dissatisfied,
                        color: Colors.red,
                      );
                    case 1:
                      return const Icon(
                        Icons.sentiment_dissatisfied,
                        color: Colors.redAccent,
                      );
                    case 2:
                      return const Icon(
                        Icons.sentiment_neutral,
                        color: Colors.amber,
                      );
                    case 3:
                      return const Icon(
                        Icons.sentiment_satisfied,
                        color: Colors.lightGreen,
                      );
                    case 4:
                      return const Icon(
                        Icons.sentiment_very_satisfied,
                        color: Colors.green,
                      );
                    default:
                      return const Icon(
                        Icons.sentiment_very_satisfied,
                        color: Colors.green,
                      );
                  }
                },
                onRatingUpdate: (rating) {
                  // ignore: avoid_print
                  print(rating);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
