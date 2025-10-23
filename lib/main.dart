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
              Gap(150),
              Stack(
                children: [
                  Image(image: AssetImage('assets/subtract.png')),
                  Container(
                    margin: EdgeInsets.only(top: 100),
                    width: 1103,
                    height: 343,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter, // يبدأ من الأعلى
                        end: Alignment.bottomCenter, // ينتهي في الأسفل
                        colors: [
                          Color.fromARGB(255, 27, 27, 31),
                          Color.fromARGB(255, 17, 17, 20),
                        ],
                      ),
                    ),
                  ),
                  Gap(50),
                  Positioned(
                    right: 50,
                    top: 15,
                    child: Image.asset(
                      'assets/sa94.png',
                      width: 500,
                      height: 500,
                    ),
                  ),
                  Positioned(
                    left: 80,
                    top: 5,

                    child: Text(
                      'Software\nEngineer',
                      style: TextStyle(color: Colors.white, fontSize: 45),
                    ),
                  ),

                  Positioned(
                    left: 80,
                    top: 189,

                    child: Text(
                      'Salah Ad-Din Alobaidi',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),

              Gap(400),
            ],
          ),
        ),
      ),
    );
  }
}
