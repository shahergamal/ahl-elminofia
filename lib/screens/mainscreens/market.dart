import 'package:flutter/material.dart';

class Market extends StatelessWidget {
  const Market({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imgList = [];
    // ignore: unused_local_variable
    final List<Widget> imageSliders = imgList
        .map((item) => Container(
              margin: const EdgeInsets.all(5.0),
              child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(25.0)),
                  child: Stack(
                    children: <Widget>[
                      Image.asset(item,
                          fit: BoxFit.cover, width: double.infinity),
                      Positioned(
                        bottom: 0.0,
                        left: 0.0,
                        right: 0.0,
                        child: Container(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(198, 0, 0, 0),
                                Color.fromARGB(0, 66, 40, 40)
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                          padding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                          /* child: Text(
                            ' ${imgList.indexOf(item)} إعلان',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),*/
                        ),
                      ),
                    ],
                  )),
            ))
        .toList();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff70C047),
        title: const Text(
          'سوق المستعمل',
          style: TextStyle(
              color: Colors.black, fontFamily: 'Aref Ruqaa', fontSize: 30),
        ),
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back_ios, color: Colors.black)),
        actions: const [
          Icon(Icons.search, color: Colors.black),
          SizedBox(
            width: 15,
          ),
        ],
      ),
    );
  }
}
