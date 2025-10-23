import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mywebsite/MediaQuerys.dart';
import 'package:mywebsite/Sohcle.dart';
import 'package:url_launcher/url_launcher.dart';

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
        backgroundColor: Color(0xff171719),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Color(0xff101012),
                width: 1442,
                height: 108,
                child: Sohcles(),
              ),
              Container(
                margin: EdgeInsets.only(top: 100),
                width: 1103,
                height: 343,
                color: Color.fromARGB(255, 180, 180, 180),
              ),

              Gap(400),
            ],
          ),
        ),
      ),
    );
  }
}
