import 'package:flutter/material.dart';

import 'auth_button.dart';

class AuthForm2 extends StatefulWidget {
  const AuthForm2({super.key});

  @override
  State<AuthForm2> createState() => _AuthForm2State();
}

class _AuthForm2State extends State<AuthForm2> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                      labelText: '   Enter New Email',
                      labelStyle: TextStyle(color: Color(0xff70C047)),
                      hintText: 'Ex:  abc..@gmail.com'),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      labelText: '   Enter Your Password',
                      labelStyle: TextStyle(color: Color(0xff70C047)),
                      hintText: 'Ex:  1233...'),
                  obscureText: false,
                ),
                const SizedBox(
                  height: 20,
                ),
                AuthButton(
                    bgcolor: const Color(0xff70C047),
                    onPressed: () {},
                    textbutton: "Register",
                    textcolor: Colors.white),
                const SizedBox(
                  height: 10,
                ),
                TextButton(
                  onPressed: (() {
                    Navigator.pop(context);
                  }),
                  child: const Text(
                    "Ihave an acount",
                    style: TextStyle(color: Colors.black54),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
