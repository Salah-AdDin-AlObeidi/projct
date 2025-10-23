import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';

import 'package:mywebsite/Sohcle.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 17, 17, 19),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Color.fromARGB(255, 27, 27, 31),
                width: 1442,
                height: 108,
                child: Sohcles(),
              ),
              Container(
                margin: EdgeInsets.only(top: 100),
                width: 1103,
                height: 343,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter, // يبدأ من الأعلى
                    end: Alignment.bottomCenter, // ينتهي في الأسفل
                    colors: [Color(0xff17171A), Color(0xff0A0A0C)],
                  ),
                ),
              ),

              Gap(400),
            ],
          ),
        ),
      ),
    );
  }
}
