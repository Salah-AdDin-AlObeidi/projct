import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mywebsite/CenerViwe/Centerviwes.dart';
import 'package:mywebsite/CenerViwe/Poster.dart';

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
                                        frameBuilder:
                                            (
                                              BuildContext context,
                                              Widget child,
                                              int? frame,
                                              bool? wasSynchronouslyLoaded,
                                            ) {
                                              // If the image was loaded synchronously or a frame is available, show the image.
                                              if (wasSynchronouslyLoaded ==
                                                      true ||
                                                  frame != null) {
                                                return child;
                                              }
                                              // Otherwise show a loading indicator until the first frame is rendered.
                                              return Center(
                                                child:
                                                    CircularProgressIndicator(),
                                              );
                                            },
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
                                            frameBuilder:
                                                (
                                                  BuildContext context,
                                                  Widget child,
                                                  int? frame,
                                                  bool? wasSynchronouslyLoaded,
                                                ) {
                                                  // If the image was loaded synchronously or a frame is available, show the image.
                                                  if (wasSynchronouslyLoaded ==
                                                          true ||
                                                      frame != null) {
                                                    return child;
                                                  }
                                                  // Otherwise show a loading indicator until the first frame is rendered.
                                                  return Center(
                                                    child:
                                                        CircularProgressIndicator(),
                                                  );
                                                },
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
                                            frameBuilder:
                                                (
                                                  BuildContext context,
                                                  Widget child,
                                                  int? frame,
                                                  bool? wasSynchronouslyLoaded,
                                                ) {
                                                  // If the image was loaded synchronously or a frame is available, show the image.
                                                  if (wasSynchronouslyLoaded ==
                                                          true ||
                                                      frame != null) {
                                                    return child;
                                                  }
                                                  // Otherwise show a loading indicator until the first frame is rendered.
                                                  return Center(
                                                    child:
                                                        CircularProgressIndicator(),
                                                  );
                                                },
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
                  Gap(70),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'telegram',
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                      Gap(10),
                      FaIcon(
                        FontAwesomeIcons.telegram,
                        color: Color(0xFF0088CC), // اللون الأزرق للتليجرام
                        size: 40, // حجم أصغر
                      ),
                    ],
                  ),
                  Gap(30),
                  Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 15,
                          spreadRadius: 2,
                          offset: Offset(0, 5),
                        ),
                        BoxShadow(
                          color: Colors.blue.withOpacity(0.05),
                          blurRadius: 10,
                          spreadRadius: 1,
                          offset: Offset(0, 2),
                        ),
                      ],
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Colors.white, Color(0xFFF8FAFF)],
                      ),
                      border: Border.all(
                        color: Colors.grey.withOpacity(0.2),
                        width: 1,
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blue.withOpacity(0.1),
                              blurRadius: 10,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Image.asset(
                          'assets/code.png',
                          frameBuilder:
                              (
                                BuildContext context,
                                Widget child,
                                int? frame,
                                bool? wasSynchronouslyLoaded,
                              ) {
                                if (wasSynchronouslyLoaded == true ||
                                    frame != null) {
                                  return Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.blue.withOpacity(0.1),
                                          blurRadius: 8,
                                          spreadRadius: 1,
                                          offset: Offset(0, 2),
                                        ),
                                      ],
                                    ),
                                    child: child,
                                  );
                                }
                                return Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey[50],
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        CircularProgressIndicator(
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                                Colors.blue,
                                              ),
                                          strokeWidth: 2,
                                        ),
                                        SizedBox(height: 10),
                                        Text(
                                          'جاري التحميل...',
                                          style: TextStyle(
                                            color: Colors.grey[600],
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                          fit: BoxFit.contain,
                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[100],
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.image_not_supported_outlined,
                                    color: Colors.grey[400],
                                    size: 40,
                                  ),
                                  SizedBox(height: 8),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'الصورة غير متوفرة',
                                        style: TextStyle(
                                          color: Colors.grey[500],
                                          fontSize: 12,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ), // مسافة بين النص والأيقونة
                                    ],
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
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
