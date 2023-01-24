import 'package:flutter/material.dart';

import '../screens/login&regster&intro/register.dart';
import 'auth_button.dart';

class AuthForm extends StatefulWidget {
  const AuthForm({super.key});

  @override
  State<AuthForm> createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
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
                      labelText: '   Enter Your Email',
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
                      hintText: 'Ex:  ******!3'),
                  obscureText: true,
                ),
                const SizedBox(
                  height: 20,
                ),
                AuthButton(
                    bgcolor: const Color(0xff70C047),
                    onPressed: () {},
                    textbutton: "Login",
                    textcolor: Colors.white),
                const SizedBox(
                  height: 10,
                ),
                TextButton(
                  onPressed: (() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) {
                      return const RegisterScreen();
                    })));
                  }),
                  child: const Text(
                    "Don't have an acount?",
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
