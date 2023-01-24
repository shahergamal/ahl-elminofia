import 'package:ahl_elmenofya/constants/auth_form.dart';
import 'package:flutter/material.dart';

import '../mainscreens/homepage.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * .5,
                  decoration: const BoxDecoration(
                    color: Color(0xff70C047),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                ),
                Center(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        "أهل المنوفية",
                        style: TextStyle(
                            fontSize: 45,
                            color: Colors.white,
                            fontFamily: "Aref Ruqaa",
                            fontWeight: FontWeight.w600),
                      ),
                      Image.asset("images/logo.png"),
                    ],
                  ),
                ),
              ],
            ),
            const AuthForm(),
            TextButton(
                onPressed: (() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return HomePage();
                  })));
                }),
                child: const Text(
                  "🔍 الدخول كمتصفح فقط",
                  style: TextStyle(color: Colors.black54,fontSize: 15),
                ))
          ],
        ),
      ),
    );
  }
}
