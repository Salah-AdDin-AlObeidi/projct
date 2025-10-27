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
                      LayoutBuilder(
                        builder: (context, constraints) {
                          final double screenWidth = constraints.maxWidth;

                          // تحديد نوع الجهاز بناءً على العرض
                          final bool isMobile;
                          final bool isTablet;
                          final bool isDesktop;

                          // تحديد عرض الحاوية لكل جهاز
                          final double containerWidth;
                          final double containerHeight;

                          if (screenWidth >= 800) {
                            // إذا العرض 800 أو أكثر - ديسكتوب
                            isDesktop = true;
                            isTablet = false;
                            isMobile = false;
                            containerWidth = 800;
                            containerHeight = 400;
                          } else if (screenWidth >= 500) {
                            // إذا العرض بين 500 و 799 - تابلت
                            isDesktop = false;
                            isTablet = true;
                            isMobile = false;
                            containerWidth = screenWidth * 0.80;
                            containerHeight = 450;
                          } else {
                            // إذا العرض أقل من 500 - موبايل
                            isDesktop = false;
                            isTablet = false;
                            isMobile = true;
                            containerWidth = screenWidth * 0.95;
                            containerHeight = 500;
                          }

                          return Stack(
                            children: [
                              // الخلفية الأساسية
                              Container(
                                width: containerWidth,
                                height: containerHeight,
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

                              if (isDesktop) ...[
                                // التصميم للشاشات الكبيرة (800+)
                                Positioned(
                                  top: 50,
                                  right: 70,
                                  child: Text(
                                    'Clinic Project',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 110,
                                  right: 5,
                                  child: SizedBox(
                                    width: 300, // عرض النص للديسكتوب
                                    child: Text(
                                      'The project involves adding, editing, and deleting a patient, booking an appointment with a doctor, administering a medication dose, adding, editing, and deleting a doctor, adding an employee, and also includes editing and deleting with special permissions for doctors and employees, privacy, as well as payment and booking.',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ),
                                // الصورة للشاشات الكبيرة
                                Positioned(
                                  left: 30,
                                  top: 50,
                                  child: Container(
                                    width: 440, // عرض الصورة للديسكتوب
                                    height: 300, // ارتفاع الصورة للديسكتوب
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
                                    width: 450, // عرض الإطار للديسكتوب
                                    height: 310, // ارتفاع الإطار للديسكتوب
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

                              if (isTablet) ...[
                                // التصميم للتابلت (500-799)
                                Positioned(
                                  top: 30,
                                  left: 0,
                                  right: 0,
                                  child: Text(
                                    'Clinic Project',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 28,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Positioned(
                                  top: 80,
                                  left: 20,
                                  right: 20,
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 350, // عرض الصورة للتابلت
                                        height: 180, // ارتفاع الصورة للتابلت
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            15,
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.blue.withOpacity(
                                                0.2,
                                              ),
                                              blurRadius: 20,
                                              offset: Offset(0, 8),
                                            ),
                                          ],
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                            15,
                                          ),
                                          child: Image.asset(
                                            'assets/istockphoto.jpg',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 50),
                                      Container(
                                        width:
                                            containerWidth *
                                            0.9, // عرض النص للتابلت
                                        child: Text(
                                          'The project involves adding, editing, and deleting a patient, booking an appointment with a doctor, administering a medication dose, adding, editing, and deleting a doctor, adding an employee, and also includes editing and deleting with special permissions for doctors and employees, privacy, as well as payment and booking.',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 13,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],

                              if (isMobile) ...[
                                // التصميم للهواتف (أقل من 500)
                                Positioned(
                                  top: 30,
                                  left: 20,
                                  right: 20,
                                  child: Text(
                                    'Clinic Project',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Positioned(
                                  top: 80,
                                  left: 20,
                                  right: 20,
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 250, // عرض الصورة للهاتف
                                        height: 150, // ارتفاع الصورة للهاتف
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            15,
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.blue.withOpacity(
                                                0.2,
                                              ),
                                              blurRadius: 15,
                                              offset: Offset(0, 5),
                                            ),
                                          ],
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                            15,
                                          ),
                                          child: Image.asset(
                                            'assets/istockphoto.jpg',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Container(
                                        width:
                                            containerWidth *
                                            0.9, // عرض النص للهاتف
                                        child: Text(
                                          'The project involves adding, editing, and deleting a patient, booking an appointment with a doctor, administering a medication dose, adding, editing, and deleting a doctor, adding an employee, and also includes editing and deleting with special permissions for doctors and employees, privacy, as well as payment and booking.',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ],
                          );
                        },
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
