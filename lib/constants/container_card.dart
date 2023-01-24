import 'package:flutter/material.dart';

// ignore: camel_case_types, must_be_immutable
class Container_card extends StatelessWidget {
  Container_card(
      {super.key,
      required this.images,
      required this.text,
      this.counter = 0,
      required this.onpressed});
  // ignore: prefer_typing_uninitialized_variables
  var images;
  String? text;
  int? counter;
  VoidCallback? onpressed;

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      height: MediaQuery.of(context).size.height * .23,
      width: MediaQuery.of(context).size.width * .48,
      child: InkWell(
        onTap: onpressed,
        child: Card(
          elevation: 15,
          shadowColor: Colors.black,
          child: LayoutBuilder(
            // ignore: non_constant_identifier_names
            builder: (ctx, Constraints) => Column(
              //mainAxisSize: MainAxisSize.min,
              children: [
                Image(
                  image: images,
                  width: Constraints.maxWidth * .8,
                  height: Constraints.maxHeight * .50,
                ),
                // ignore: sized_box_for_whitespace
                Container(
                  height: Constraints.maxHeight * .2,
                  width: Constraints.maxWidth * .99,
                  child: Center(
                    child: Text(
                      text!,
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: Constraints.maxWidth * .05,
                    ),
                    // ignore: sized_box_for_whitespace
                    Container(
                      height: Constraints.maxHeight * .2,
                      width: Constraints.maxWidth * .1,
                      child: const Icon(
                        Icons.arrow_back_ios,
                        size: 15,
                        color: Color(0xff70C047),
                      ),
                    ),
                    // ignore: sized_box_for_whitespace
                    Container(
                      height: Constraints.maxHeight * .2,
                      width: Constraints.maxWidth * .2,
                      child: Text(
                        counter.toString(),
                        style: const TextStyle(
                            color: Color.fromARGB(255, 6, 132, 250)),
                      ),
                    ),
                    SizedBox(
                      width: Constraints.maxWidth * .05,
                    ),
                    // ignore: sized_box_for_whitespace
                    Container(
                      height: Constraints.maxHeight * .2,
                      width: Constraints.maxWidth * .6,
                      child: const Text(
                        'عدد الاعلانات',
                        style:
                            TextStyle(color: Color(0xff70C047), fontSize: 15),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
