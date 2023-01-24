import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  // ignore: non_constant_identifier_names
  const AuthButton(
      {super.key,
      required this.textbutton,
      required this.onPressed,
      required this.textcolor,
      required this.bgcolor});
  // ignore: non_constant_identifier_names
  final String? textbutton;
  final VoidCallback? onPressed;
  final Color? textcolor;
  final Color? bgcolor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        // ignore: sort_child_properties_last
        child: Text(
          textbutton!,
          style: TextStyle(
            color: textcolor,
            fontSize: 20,
          ),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(bgcolor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
      ),
    );
  }
}
