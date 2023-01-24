import 'package:ahl_elmenofya/screens/mainscreens/aboutapp.dart';
import 'package:ahl_elmenofya/screens/mainscreens/news.dart';
import 'package:ahl_elmenofya/screens/mainscreens/realestate.dart';
import 'package:ahl_elmenofya/screens/mainscreens/restaurants.dart';
import 'package:ahl_elmenofya/screens/mainscreens/sports.dart';
import 'package:ahl_elmenofya/screens/mainscreens/super_market.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../../constants/container_card.dart';
import '../../constants/custom_drawer.dart';
import 'cars.dart';
import 'doctors.dart';
import 'educational.dart';
import 'fives.dart';
import 'hospitals.dart';
import 'maintenance.dart';
import 'market.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  HomePage({super.key, this.myindex});
  int? myindex;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> appbartitle = ['News Home', 'Business News', 'Sports News'];

  // List<Widget> bodywidgets = [];
  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(
      iconTheme: const IconThemeData(color: Colors.black),
      centerTitle: true,
      backgroundColor: const Color(0xff70C047),
      title: const Text(
        "أهل المنوفية",
        style: TextStyle(
            fontSize: 35, color: Colors.black, fontFamily: 'Aref Ruqaa'),
      ),
      // ignore: prefer_const_literals_to_create_immutables
      actions: [
        const Icon(
          Icons.manage_search_outlined,
          color: Color.fromARGB(255, 0, 0, 0),
          size: 25,
        ),
        const SizedBox(
          width: 20,
        ),
      ],
    );
    final List<String> imgList = [
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
                          child: Text(
                            ' ${imgList.indexOf(item)} إعلان',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
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
                    animateToClosest: true,
                    autoPlayInterval: const Duration(seconds: 4),
                    disableCenter: true,
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
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
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container_card(
                      images: const AssetImage('images/ماركت2022.jpg'),
                      text: "سوبر ماركت ومحلات",
                      onpressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: ((context) {
                          return const Super_market();
                        })));
                      },
                    ),
                    Container_card(
                      images: const AssetImage('images/مطاعم2022.jpg'),
                      text: "مطاعم وكافيهات",
                      onpressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const Restaurants();
                        }));
                      },
                      counter: 4,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container_card(
                      images: const AssetImage('images/اطباء2022.jpg'),
                      text: "أطباء",
                      onpressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: ((context) {
                          return const Doctors();
                        })));
                      },
                    ),
                    Container_card(
                        images: const AssetImage('images/مستشفيات2022.jpg'),
                        text: "مستشفيات وصيدليات",
                        onpressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: ((context) {
                            return const Hospitals();
                          })));
                        }),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container_card(
                        images: const AssetImage('images/عقارات2022.jpg'),
                        text: "عقارات(بيع/إيجار)",
                        onpressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: ((context) {
                            return const Realestate();
                          })));
                        }),
                    Container_card(
                        images: const AssetImage('images/سيارات2022.jpg'),
                        text: "(سيارات (بيع / إيجار",
                        onpressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: ((context) {
                            return const Cars();
                          })));
                        }),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container_card(
                        images: const AssetImage('images/جيم2022.jpg'),
                        text: "رياضة ",
                        onpressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: ((context) {
                            return const Sports();
                          })));
                        }),
                    Container_card(
                        images: const AssetImage('images/مدرسين2022 (1).jpg'),
                        text: "تعليمى",
                        onpressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: ((context) {
                            return const Educational();
                          })));
                        }),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container_card(
                        images: const AssetImage('images/صيانة 2022.jpg'),
                        text: 'صيانة',
                        onpressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: ((context) {
                            return const Fixed();
                          })));
                        }),
                    Container_card(
                        images: const AssetImage('images/خمسات2022.jpg'),
                        text: ' خمسات المنوفية',
                        onpressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: ((context) {
                            return const Fives();
                          })));
                        }),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          Navigator.push(context,
                              MaterialPageRoute(builder: ((context) {
                            return const News();
                          })));
                        });
                      },
                      // ignore: sized_box_for_whitespace
                      child: Container(
                        height: MediaQuery.of(context).size.height * .23,
                        width: MediaQuery.of(context).size.width * .48,
                        child: Card(
                          elevation: 15,
                          shadowColor: Colors.black,
                          child: LayoutBuilder(
                            // ignore: non_constant_identifier_names
                            builder: (ctx, Constraints) => Column(
                              children: [
                                // ignore: sized_box_for_whitespace
                                Container(
                                  width: Constraints.maxWidth * .8,
                                  height: Constraints.maxHeight * .7,
                                  child: Image.asset(
                                    'images/اخبار2022.jpg',
                                    width: 180,
                                    height: 100,
                                  ),
                                ),
                                // ignore: sized_box_for_whitespace
                                Container(
                                  width: Constraints.maxWidth * .8,
                                  height: Constraints.maxHeight * .2,
                                  child: const Center(
                                    child: Text(
                                      'أخبار اليوم',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container_card(
                        images: const AssetImage('images/سوق2022.jpg'),
                        text: 'سوق المستعمل',
                        onpressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: ((context) {
                            return const Market();
                          })));
                        }),
                  ],
                ),
              ),
              const Divider(
                  thickness: 2,
                  height: 7,
                  indent: 8,
                  endIndent: 8,
                  color: Colors.blueGrey),
              Expanded(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.push(context,
                            MaterialPageRoute(builder: ((context) {
                          return const Aboutapp();
                        })));
                      });
                    },
                    // ignore: sized_box_for_whitespace
                    child: Container(
                      height: MediaQuery.of(context).size.height * .23,
                      width: MediaQuery.of(context).size.width * .97,
                      child: Card(
                        elevation: 15,
                        shadowColor: Colors.black,
                        child: LayoutBuilder(
                          // ignore: non_constant_identifier_names
                          builder: (ctx, Constraints) => Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: Constraints.maxWidth * .04,
                              ),
                              // ignore: sized_box_for_whitespace
                              Container(
                                width: Constraints.maxWidth * .8,
                                height: Constraints.maxHeight * .40,
                                child: Image.asset(
                                  'images/عن التطبيق.png',
                                  width: 100,
                                  height: 100,
                                ),
                              ),
                              // ignore: sized_box_for_whitespace
                              Container(
                                width: Constraints.maxWidth * .8,
                                height: Constraints.maxHeight * .48,
                                child: const Center(
                                  child: Text(
                                    'عن التطبيق',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Row(
                                children: const [
                                  SizedBox(
                                    width: 370,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ))
            ],
          ),
        ],
      ),
      // ignore: prefer_const_constructors
      drawer: CustomDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(0xff70C047),
        unselectedItemColor: Colors.black,

        iconSize: 30,
        //عند الضغط علية

        //بيبين انهى ايقونة متفعلة
        //currentIndex: myindex!,
        //لون الخلفية
        backgroundColor: Colors.white,
        elevation: 50,
        //عناصر البااار
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'home'), //index 0
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline_outlined),
              label: 'favorite'), //index 1
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outlined), label: 'profile'), //index 2
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        // ignore: sort_child_properties_last
        child: const Icon(
          Icons.whatsapp,
          color: Colors.white,
          size: 40,
        ),
        backgroundColor: const Color(0xff70C047),
      ),
    );
  }
}
