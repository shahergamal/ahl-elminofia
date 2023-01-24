import 'package:ahl_elmenofya/screens/login&regster&intro/auth_screen.dart';
import 'package:flutter/material.dart';

import '../../constants/auth_button.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff70C047),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(
                height: 100,
              ),
              Image.asset("images/logo.png"),
              const SizedBox(
                height: 200,
              ),
              AuthButton(
                  bgcolor: Colors.white,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) {
                      return const AuthScreen();
                    })));
                  },
                  textbutton: 'Get Started',
                  textcolor: const Color(0xff70C047)),
            ],
          ),
        ),
      ),
    );
  }
}
