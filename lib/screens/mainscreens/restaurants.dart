import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../constants/custom_carditeam.dart';

class Restaurants extends StatelessWidget {
  const Restaurants({super.key});

  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(
      backgroundColor: const Color(0xff70C047),
      title: const Text(
        'مطاعم وكافيهات',
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
    );
    final List<String> imgList = [
      'images/3a3edcbb83f152a12c094297ce6d1639.jpg',
      'images/22.jpg',
      'images/333.jpg',
    ];
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
      appBar: appBar,
      body: Stack(
        children: [
          Center(
              child: Image.asset(
            'images/شعار المنوفية1212.png',
            width: double.infinity,
            height: 400,
          )),
          ListView(
            children: [
              // ignore: sized_box_for_whitespace
              Container(
                height: (MediaQuery.of(context).size.height -
                        appBar.preferredSize.height -
                        MediaQuery.of(context).padding.top) *
                    .4,
                child: CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    viewportFraction: 0.9,
                    enlargeStrategy: CenterPageEnlargeStrategy.height,
                    aspectRatio: 1.5,
                    enlargeCenterPage: true,
                  ),
                  items: imageSliders,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              CustomCardIteam(
                  subtitle:
                      'تريد أن تطلب من أسماك المرشدي في حدائق الاهرام - منطقة ج ؟ تصفّح المنيو، اطلب وجبتك المفضلة وسنقوم بتوصيلها إليك. تجهّز، استعد، طلبات!',
                  title: 'أسماك المرشدى',
                  imagess:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuyi1lr7RbWf3-BXqfA2Xkl5aH0oZntRDG9g&usqp=CAU'),
              CustomCardIteam(
                  subtitle:
                      'تريد أن تطلب من أسماك المرشدي في حدائق الاهرام - منطقة ج ؟ تصفّح المنيو، اطلب وجبتك المفضلة وسنقوم بتوصيلها إليك. تجهّز، استعد، طلبات!',
                  title: 'أسماك المرشدى',
                  imagess:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuyi1lr7RbWf3-BXqfA2Xkl5aH0oZntRDG9g&usqp=CAU'),
              CustomCardIteam(
                  subtitle:
                      'تريد أن تطلب من أسماك المرشدي في حدائق الاهرام - منطقة ج ؟ تصفّح المنيو، اطلب وجبتك المفضلة وسنقوم بتوصيلها إليك. تجهّز، استعد، طلبات!',
                  title: 'أسماك المرشدى',
                  imagess:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuyi1lr7RbWf3-BXqfA2Xkl5aH0oZntRDG9g&usqp=CAU'),
              CustomCardIteam(
                  subtitle:
                      'تريد أن تطلب من أسماك المرشدي في حدائق الاهرام - منطقة ج ؟ تصفّح المنيو، اطلب وجبتك المفضلة وسنقوم بتوصيلها إليك. تجهّز، استعد، طلبات!',
                  title: 'أسماك المرشدى',
                  imagess:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuyi1lr7RbWf3-BXqfA2Xkl5aH0oZntRDG9g&usqp=CAU'),
            ],
          ),
        ],
      ),
    );
  }
}
