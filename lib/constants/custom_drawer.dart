import 'package:ahl_elmenofya/constants/cardindrawer.dart';
import 'package:ahl_elmenofya/screens/mainscreens/homepage.dart';
import 'package:flutter/material.dart';

import '../screens/mainscreens/cars.dart';
import '../screens/mainscreens/doctors.dart';
import '../screens/mainscreens/educational.dart';
import '../screens/mainscreens/fives.dart';
import '../screens/mainscreens/hospitals.dart';
import '../screens/mainscreens/maintenance.dart';
import '../screens/mainscreens/market.dart';
import '../screens/mainscreens/news.dart';
import '../screens/mainscreens/realestate.dart';
import '../screens/mainscreens/restaurants.dart';
import '../screens/mainscreens/sports.dart';
import '../screens/mainscreens/super_market.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        child: Stack(
          children: [
            Center(
              child: Image.asset(
                'images/شعار المنوفية1212.png',
                width: double.infinity,
                height: 400,
              ),
            ),
            ListView(
              children: [
                Stack(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Image.asset(
                      'images/خلفية الاكونت.png',
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      bottom: 7,
                      left: 6,
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.blue,
                                  width: 3,
                                ),
                                shape: BoxShape.circle),
                            child: ClipOval(
                              child: Image.asset(
                                'images/logo.png',
                                fit: BoxFit.cover,
                                height: 120,
                                width: 120,
                              ),
                            ),
                          ),
                          const Text(
                            'user names',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                        top: 3,
                        right: 10,
                        child: InkWell(
                            onTap: () {
                              setState(() {
                                Navigator.pop(context);
                              });
                            },
                            child: const Icon(
                              Icons.cancel_outlined,
                              color: Colors.red,
                              size: 35,
                            )))
                  ],
                ),
                const SizedBox(
                  height: 2,
                ),
                CardDrawer(
                  title: 'الرئيسية',
                  onpressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) {
                      return HomePage();
                    })));
                  },
                ),
                CardDrawer(
                  title: 'مطاعم وكافيهات',
                  onpressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) {
                      return const Restaurants();
                    })));
                  },
                ),
                CardDrawer(
                  title: 'سوبر ماركت',
                  onpressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) {
                      return const Super_market();
                    })));
                  },
                ),
                CardDrawer(
                  title: "مستشفيات وصيدليات",
                  onpressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) {
                      return const Hospitals();
                    })));
                  },
                ),
                CardDrawer(
                  title: 'أطباء',
                  onpressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) {
                      return const Doctors();
                    })));
                  },
                ),
                CardDrawer(
                  title: 'سيارات',
                  onpressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) {
                      return const Cars();
                    })));
                  },
                ),
                CardDrawer(
                  title: 'عقارات',
                  onpressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) {
                      return const Realestate();
                    })));
                  },
                ),
                CardDrawer(
                  title: 'سوق المستعمل',
                  onpressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) {
                      return const Market();
                    })));
                  },
                ),
                CardDrawer(
                  title: 'تعليمى',
                  onpressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) {
                      return const Educational();
                    })));
                  },
                ),
                CardDrawer(
                  title: 'رياضة',
                  onpressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) {
                      return const Sports();
                    })));
                  },
                ),
                CardDrawer(
                  title: 'أخبار اليوم',
                  onpressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) {
                      return const News();
                    })));
                  },
                ),
                CardDrawer(
                  title: 'صيانة وحرف يدوية',
                  onpressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) {
                      return const Fixed();
                    })));
                  },
                ),
                CardDrawer(
                  title: 'خمسات المنوفية',
                  onpressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) {
                      return const Fives();
                    })));
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
