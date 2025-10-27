import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mywebsite/CenerViwe/Centerviwes.dart';
import 'package:mywebsite/CenerViwe/Poster.dart';
import 'package:mywebsite/CenerViwe/Skills/Skills.dart';
import 'package:mywebsite/CenerViwe/Skills/ViweSkills/ViweSkills.dart';
import 'package:mywebsite/CenerViwe/TextsCenter.dart';

import 'package:mywebsite/Sohcle.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
              Gap(100),
              Posters(),

              Column(
                children: [
                  Stack(
                    children: [
                      Gap(30),

                      Centerviwes(),

                      Photos(),

                      FirstText(),
                      SecondText(),

                      ExperienceText(),
                      Posters2(),
                    ],
                  ),
                  Gap(50),
                  Text(
                    'Skills',
                    style: TextStyle(color: Colors.blue, fontSize: 30),
                  ),
                  Gap(20),
                  Viweskills(),
                  Gap(50),
                  Text(
                    'Projects',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  Gap(20),
                  Stack(
                    children: [
                      // الخلفية مع حدود أنيقة
                      Container(
                        width: 800,
                        height: 400,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 27, 27, 31),
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(
                            color: Colors.blue.withOpacity(0.3),
                            width: 1,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blue.withOpacity(0.1),
                              blurRadius: 20,
                              spreadRadius: 2,
                              offset: Offset(0, 10),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 50,
                        right: 70,
                        child: Text(
                          'Clinic Project',
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      ),
                      Positioned(
                        top: 110,
                        right: 25,
                        child: Text(
                          'The project involves adding, editing, and \ndeleting a patient, booking an appointment \nwith a doctor, administering a medication \ndose, adding, editing, and deleting a \ndoctor, adding an employee, and also \nincludes editing and deleting with special \npermissions for doctors and employees, \nprivacy, as well as payment and booking.',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                      ),
                      // الصورة مع تأثير ظل وإطار
                      Positioned(
                        left: 30,
                        top: 50,
                        child: Container(
                          width: 440,
                          height: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.blue.withOpacity(0.2),
                                blurRadius: 25,
                                offset: Offset(0, 10),
                              ),
                              BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                blurRadius: 15,
                                offset: Offset(0, 5),
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'assets/istockphoto.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),

                      // إطار زخرفي للصورة
                      Positioned(
                        left: 25,
                        top: 45,
                        child: Container(
                          width: 450,
                          height: 310,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(
                              color: Colors.blue.withOpacity(0.5),
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                    ],
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
