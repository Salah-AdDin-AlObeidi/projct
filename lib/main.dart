import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mywebsite/MediaQuerys.dart';
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
        body: Container(
          color: Color(0xff101012),
          width: 1442,
          height: 108,
          child: Stack(
            children: [
              Positioned(
                left: Responsive.isDesktop(context)
                    ? MediaQuery.of(context).size.width * 0.37
                    : Responsive.isTablet(context)
                    ? MediaQuery.of(context).size.width * 0.34
                    : MediaQuery.of(context).size.width * 0.34,
                bottom: MediaQuery.of(context).size.height * 0.04,
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () async {
                      const url =
                          'https://www.facebook.com/salah.ad.din.alobeidi/';
                      if (await canLaunchUrl(Uri.parse(url))) {
                        await launchUrl(
                          Uri.parse(url),
                          mode: LaunchMode.externalApplication,
                        );
                      } else {
                        throw 'لا يمكن فتح الرابط $url';
                      }
                    },
                    child: const FaIcon(
                      FontAwesomeIcons.facebook,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),
              ),

              Positioned(
                left: Responsive.isDesktop(context)
                    ? MediaQuery.of(context).size.width * 0.41
                    : Responsive.isTablet(context)
                    ? MediaQuery.of(context).size.width * 0.40
                    : MediaQuery.of(context).size.width * 0.41,
                bottom: MediaQuery.of(context).size.height * 0.04,
                child: MouseRegion(
                  cursor: SystemMouseCursors.click, // 👈 يجعل المؤشر على شكل يد
                  child: GestureDetector(
                    onTap: () async {
                      const url =
                          'https://www.linkedin.com/in/salah-ad-din-alobeidi-07a391350/';
                      if (await canLaunchUrl(Uri.parse(url))) {
                        await launchUrl(
                          Uri.parse(url),
                          mode: LaunchMode.externalApplication,
                        );
                      } else {
                        throw 'لا يمكن فتح الرابط $url';
                      }
                    },
                    child: const FaIcon(
                      FontAwesomeIcons.linkedinIn,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),
              ),

              Positioned(
                left: Responsive.isDesktop(context)
                    ? MediaQuery.of(context).size.width * 0.45
                    : Responsive.isTablet(context)
                    ? MediaQuery.of(context).size.width * 0.46
                    : MediaQuery.of(context).size.width * 0.48,
                bottom: MediaQuery.of(context).size.height * 0.04,
                child: MouseRegion(
                  cursor: SystemMouseCursors.click, // 👈 يجعل المؤشر على شكل يد
                  child: GestureDetector(
                    onTap: () async {
                      const url =
                          'https://www.instagram.com/salah_addin_alobaidi/';
                      if (await canLaunchUrl(Uri.parse(url))) {
                        await launchUrl(
                          Uri.parse(url),
                          mode: LaunchMode.externalApplication,
                        );
                      } else {
                        throw 'لا يمكن فتح الرابط $url';
                      }
                    },
                    child: const FaIcon(
                      FontAwesomeIcons.instagram,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),
              ),

              Positioned(
                left: Responsive.isDesktop(context)
                    ? MediaQuery.of(context).size.width * 0.49
                    : Responsive.isTablet(context)
                    ? MediaQuery.of(context).size.width * 0.52
                    : MediaQuery.of(context).size.width * 0.55,
                bottom: MediaQuery.of(context).size.height * 0.04,
                child: MouseRegion(
                  cursor: SystemMouseCursors.click, // 👈 يجعل المؤشر على شكل يد
                  child: GestureDetector(
                    onTap: () async {
                      const url = 'https://github.com/Salah-AdDin-AlObeidi';
                      if (await canLaunchUrl(Uri.parse(url))) {
                        await launchUrl(
                          Uri.parse(url),
                          mode: LaunchMode.externalApplication,
                        );
                      } else {
                        throw 'لا يمكن فتح الرابط $url';
                      }
                    },
                    child: const FaIcon(
                      FontAwesomeIcons.github,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
