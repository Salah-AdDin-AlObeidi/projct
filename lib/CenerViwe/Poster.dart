import 'package:flutter/material.dart';

/// 🔹 يحدد نوع الجهاز بناءً على عرض الشاشة
class Responsive {
  static bool isMobile(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return width >= 300 && width <= 599;
  }

  static bool isTablet(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return width >= 600 && width <= 1199;
  }

  static bool isDesktop(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return width >= 1200;
  }
}

/// 🔹 كلاس لحساب أبعاد الصورة الصغيرة (Subtract)
class SubtractDimensions {
  final BuildContext context;
  SubtractDimensions(this.context);

  double get left {
    final width = MediaQuery.of(context).size.width;
    if (width >= 800 && width <= 1999) {
      return width * 0.65; // 65% للشاشات الطويلة
    } else if (Responsive.isDesktop(context)) {
      return width * 0.60; // 60%
    } else if (Responsive.isTablet(context)) {
      return width * 0.70; // 50%
    } else {
      return width * 0.70; // 40% - mobile
    }
  }

  double get height {
    final height = MediaQuery.of(context).size.height;
    if (height >= 800 && height <= 1999) {
      return 60; // ارتفاع أكبر للشاشات الطويلة
    } else if (Responsive.isDesktop(context)) {
      return 50;
    } else if (Responsive.isTablet(context)) {
      return 45;
    } else {
      return 40; // mobile
    }
  }
}

class Posters extends StatelessWidget {
  const Posters({super.key});

  @override
  Widget build(BuildContext context) {
    final dimensions = SubtractDimensions(context);

    return Container(
      margin: EdgeInsets.only(left: dimensions.left),
      child: Image(
        height: dimensions.height,
        image: AssetImage('assets/subtract.png'),
      ),
    );
  }
}
