import 'package:ahl_elmenofya/screens/mainscreens/homepage.dart';
import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import 'allnews.dart';
import 'business.dart';
import 'sports_news.dart';

class NewsHome extends StatefulWidget {
  const NewsHome({super.key});

  @override
  State<NewsHome> createState() => _NewsHomeState();
}

class _NewsHomeState extends State<NewsHome> {
  int myindex = 0;
  List<String> appbartitle = [
    'أخبار اليوم',
    'أخبار السياسة والاقتصاد',
    'أخبار الرياضة'
  ];
  List<Widget> bodywidgets = [
    const All_News(),
    const Business(),
    const Sports()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            setState(() {
              Navigator.push(context, MaterialPageRoute(builder: ((context) {
                return HomePage();
              })));
            });
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        backgroundColor: const Color(0xff70C047),
        title: Text(
          appbartitle[myindex],
          style: const TextStyle(
              fontSize: 35, color: Colors.black, fontFamily: 'Aref Ruqaa'),
        ),
        centerTitle: true,
      ),
      body: bodywidgets[myindex],
      /* floatingActionButton: FloatingActionButton(
        onPressed: () {
        
      },
      child: Icon(Icons.arrow_circle_up,size: 55,),
      ),*/
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 25,
        //عند الضغط علية
        onTap: (value) {
          setState(() {
            myindex = value;
          });
        },
        //بيبين انهى ايقونة متفعلة
        currentIndex: myindex,
        //لون الخلفية
        backgroundColor: Colors.white,
        elevation: 50,
        //عناصر البااار
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home), label: 'أخبار اليوم'), //index 0
          BottomNavigationBarItem(
              icon: Icon(Icons.business_center),
              label: 'أخبار السياسة'), //index 1
          BottomNavigationBarItem(
              icon: Icon(Icons.sports), label: 'أخبار الرياضة'), //index 2
        ],
      ),
    );
    //category=business&
  }

  //بعمل ميسود بتبقى داخل الكلاس وخارج الميسود التانية

  //لازم ابقى استات فول ودجيت
  @override
  void initState() {
    // ignore: avoid_print
    print('initstate called');
    getNews();
    super.initState();
  }
}
