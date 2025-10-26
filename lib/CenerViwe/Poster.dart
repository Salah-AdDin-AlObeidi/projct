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
      return width * 0.70; // 70%
    } else {
      return width * 0.70; // 70% - mobile
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

/// 🔹 كلاس لحساب أبعاد الصورة الثانية (Subtract2)
class Subtract2Dimensions {
  final BuildContext context;
  Subtract2Dimensions(this.context);

  double get left {
    final width = MediaQuery.of(context).size.width;

    if (width >= 800 && width <= 1999) {
      return width * 0.55; // 75% للشاشات الطويلة
    } else if (Responsive.isDesktop(context)) {
      return width * 0.52; // 70%
    } else if (Responsive.isTablet(context)) {
      return width * 0.50; // 80%
    } else {
      return width * 0.50; // 80% - mobile
    }
  }

  double get height {
    final height = MediaQuery.of(context).size.height;
    if (height >= 800 && height <= 1999) {
      return 55; // ارتفاع للشاشات الطويلة
    } else if (Responsive.isDesktop(context)) {
      return 45;
    } else if (Responsive.isTablet(context)) {
      return 40;
    } else {
      return 35; // mobile
    }
  }

  double get top {
    final height = MediaQuery.of(context).size.height;
    if (height >= 800 && height <= 1999) {
      return height * 0.60; // 15% للشاشات الطويلة
    } else if (Responsive.isDesktop(context)) {
      return height * 0.40; // 12%
    } else if (Responsive.isTablet(context)) {
      return height * 0.40; // 10%
    } else {
      return height * 0.35; // 8% - mobile
    }
  }
}

class Posters extends StatelessWidget {
  const Posters({super.key});

  @override
  Widget build(BuildContext context) {
    final dimensions = SubtractDimensions(context);

    return Positioned(
      top: 20, // يمكنك تعديل الـ top حسب الحاجة
      child: Container(
        margin: EdgeInsets.only(left: dimensions.left),
        child: Image(
          height: dimensions.height,
          image: AssetImage('assets/subtract.png'),
        ),
      ),
    );
  }
}

class Posters2 extends StatelessWidget {
  const Posters2({super.key});

  @override
  Widget build(BuildContext context) {
    final dimensions = Subtract2Dimensions(context);

    return Positioned(
      top: dimensions.top, // استخدام الـ top المتجاوب
      child: Container(
        margin: EdgeInsets.only(left: dimensions.left),
        child: Image(
          height: dimensions.height,
          image: AssetImage('assets/Subtract2.png'),
        ),
      ),
    );
  }
}
