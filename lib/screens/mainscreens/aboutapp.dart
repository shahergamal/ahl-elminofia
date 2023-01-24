import 'package:flutter/material.dart';

class Aboutapp extends StatelessWidget {
  const Aboutapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff70C047),
        title: const Text(
          'ABOUT APP',
          style: TextStyle(
              color: Colors.black, fontFamily: 'Aref Ruqaa', fontSize: 30),
        ),
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back_ios, color: Colors.black)),
      ),
    );
  }
}
