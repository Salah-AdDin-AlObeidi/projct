import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mywebsite/CenerViwe/Centerviwes.dart';
import 'package:mywebsite/CenerViwe/Poster.dart';
import 'package:mywebsite/CenerViwe/Skills/Skills.dart';
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
                  LayoutBuilder(
                    builder: (context, constraints) {
                      final double screenWidth = constraints.maxWidth;

                      // تحديد نوع الجهاز بناءً على العرض
                      final bool isMobile = screenWidth < 600;
                      final bool isTablet =
                          screenWidth >= 600 && screenWidth < 999;
                      final bool isMediumScreen =
                          screenWidth >= 900 && screenWidth < 1067;
                      final bool isDesktop = screenWidth >= 1024;

                      if (isMobile) {
                        // للهواتف - عمودي
                        return Column(
                          children: [
                            SkillCard(
                              icon: FontAwesomeIcons.database,
                              title: "SQL Server",
                              description:
                                  "I have experience in SQL Server, including designing tables and relationships, writing queries and stored procedures, using SSMS to manage databases, and integrating them with .NET applications.",
                              backgroundColor: Color.fromARGB(255, 27, 27, 31),
                              descriptionFontSize: 9,
                              width: screenWidth * 0.9,
                              height: 180,
                            ),
                            SizedBox(height: 16),
                            SkillCard(
                              icon: FontAwesomeIcons.code,
                              title: "C# .NET",
                              description:
                                  "I have experience in C# .NET, including building desktop applications, working with ASP.NET and Web API, using for data access, and integrating with SQL Server databases.",
                              backgroundColor: Color.fromARGB(255, 27, 27, 31),
                              descriptionFontSize: 9,
                              width: screenWidth * 0.9,
                              height: 180,
                            ),
                            SizedBox(height: 16),
                            SkillCard(
                              icon: FontAwesomeIcons.mobileButton,
                              title: "Flutter & Dart",
                              description:
                                  "I have basic experience in Flutter and Dart, including developing cross-platform mobile applications and designing interactive user interfaces. This is also my personal website.",
                              backgroundColor: Color.fromARGB(255, 27, 27, 31),
                              descriptionFontSize: 9,
                              width: screenWidth * 0.9,
                              height: 180,
                            ),
                          ],
                        );
                      } else if (isTablet) {
                        // للآيباد - عمودي
                        return Column(
                          children: [
                            SkillCard(
                              icon: FontAwesomeIcons.database,
                              title: "SQL Server",
                              description:
                                  "I have experience in SQL Server, including designing tables and relationships, writing queries and stored procedures, using SSMS to manage databases, and integrating them with .NET applications.",
                              backgroundColor: Color.fromARGB(255, 27, 27, 31),
                              descriptionFontSize: 9,
                              width: screenWidth * 0.8,
                              height: 200,
                            ),
                            Gap(20),
                            SkillCard(
                              icon: FontAwesomeIcons.code,
                              title: "C# .NET",
                              description:
                                  "I have experience in C# .NET, including building desktop applications, working with ASP.NET and Web API, using for data access, and integrating with SQL Server databases.",
                              backgroundColor: Color.fromARGB(255, 27, 27, 31),
                              descriptionFontSize: 9,
                              width: screenWidth * 0.8,
                              height: 200,
                            ),
                            Gap(20),
                            SkillCard(
                              icon: FontAwesomeIcons.mobileButton,
                              title: "Flutter & Dart",
                              description:
                                  "I have basic experience in Flutter and Dart, including developing cross-platform mobile applications and designing interactive user interfaces. This is also my personal website.",
                              backgroundColor: Color.fromARGB(255, 27, 27, 31),
                              descriptionFontSize: 9,
                              width: screenWidth * 0.8,
                              height: 200,
                            ),
                          ],
                        );
                      } else if (isMediumScreen) {
                        // للشاشات المتوسطة (900-1024) - صفين: اثنان فوق وواحد تحت
                        return Column(
                          children: [
                            // الصف الأول: بطاقتين
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SkillCard(
                                  icon: FontAwesomeIcons.database,
                                  title: "SQL Server",
                                  description:
                                      "I have experience in SQL Server, including designing tables and relationships, writing queries and stored procedures, using SSMS to manage databases, and integrating them with .NET applications.",
                                  backgroundColor: Color.fromARGB(
                                    255,
                                    27,
                                    27,
                                    31,
                                  ),
                                  descriptionFontSize: 10,
                                  width: (screenWidth - 200) / 2,
                                  height: 220,
                                ),
                                Gap(20),
                                SkillCard(
                                  icon: FontAwesomeIcons.code,
                                  title: "C# .NET",
                                  description:
                                      "I have experience in C# .NET, including building desktop applications, working with ASP.NET and Web API, using for data access, and integrating with SQL Server databases.",
                                  backgroundColor: Color.fromARGB(
                                    255,
                                    27,
                                    27,
                                    31,
                                  ),
                                  descriptionFontSize: 10,
                                  width: (screenWidth - 200) / 2,
                                  height: 220,
                                ),
                              ],
                            ),
                            Gap(20),
                            // الصف الثاني: بطاقة واحدة في المركز
                            SkillCard(
                              icon: FontAwesomeIcons.mobileButton,
                              title: "Flutter & Dart",
                              description:
                                  "I have basic experience in Flutter and Dart, including developing cross-platform mobile applications and designing interactive user interfaces. This is also my personal website.",
                              backgroundColor: Color.fromARGB(255, 27, 27, 31),
                              descriptionFontSize: 10,
                              width: (screenWidth - 60) / 2,
                              height: 220,
                            ),
                          ],
                        );
                      } else {
                        // للشاشات الكبيرة (1024+) - ثلاثة بطاقات في صف واحد
                        return Column(
                          children: [
                            Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SkillCard(
                                    icon: FontAwesomeIcons.database,
                                    title: "SQL Server",
                                    description:
                                        "I have experience in SQL Server, including designing tables and relationships, writing queries and stored procedures, using SSMS to manage databases, and integrating them with .NET applications.",
                                    backgroundColor: Color.fromARGB(
                                      255,
                                      27,
                                      27,
                                      31,
                                    ),
                                    descriptionFontSize: 11,
                                    width: 340,
                                    height: 240,
                                  ),
                                  Gap(20),
                                  SkillCard(
                                    icon: FontAwesomeIcons.code,
                                    title: "C# .NET",
                                    description:
                                        "I have experience in C# .NET, including building desktop applications, working with ASP.NET and Web API, using for data access, and integrating with SQL Server databases.",
                                    backgroundColor: Color.fromARGB(
                                      255,
                                      27,
                                      27,
                                      31,
                                    ),
                                    descriptionFontSize: 11,
                                    width: 340,
                                    height: 240,
                                  ),
                                  Gap(20),
                                  SkillCard(
                                    icon: FontAwesomeIcons.mobileButton,
                                    title: "Flutter & Dart",
                                    description:
                                        "I have basic experience in Flutter and Dart, including developing cross-platform mobile applications and designing interactive user interfaces. This is also my personal website.",
                                    backgroundColor: Color.fromARGB(
                                      255,
                                      27,
                                      27,
                                      31,
                                    ),
                                    descriptionFontSize: 11,
                                    width: 340,
                                    height: 240,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      }
                    },
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
