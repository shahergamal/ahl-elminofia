import 'package:flutter/material.dart';

import '../../constants/auth_form2.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
                        height: 45,
                      ),
                      const Text(
                        "تسجيل مستخدم جديد",
                        style: TextStyle(
                            fontSize: 30,
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
            const AuthForm2(),
          ],
        ),
      ),
    );
  }
}
