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

/// 🔹 كلاس لحساب الإحداثيات (left / bottom) وفق نوع الجهاز
class DeviceDimensions {
  final BuildContext context;
  DeviceDimensions(this.context);

  double get left {
    final width = MediaQuery.of(context).size.width;
    if (Responsive.isDesktop(context)) {
      return width * 0.35;
    } else if (Responsive.isTablet(context)) {
      return width * 0.25;
    } else {
      return width * 0.10; // mobile
    }
  }

  double get bottom {
    final height = MediaQuery.of(context).size.height;
    if (Responsive.isDesktop(context)) {
      return height * 0.03;
    } else if (Responsive.isTablet(context)) {
      return height * 0.04;
    } else {
      return height * 0.05;
    }
  }
}