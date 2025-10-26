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

  // 🔹 دالة جديدة للكشف عن الشاشات بعرض 800 بكسل
  static bool is800Width(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return width >= 800 && width <= 899;
  }
}

/// 🔹 كلاس لحساب أبعاد الـ Container
class ContainerDimensions {
  final BuildContext context;
  ContainerDimensions(this.context);

  double get width {
    final width = MediaQuery.of(context).size.width;
    if (Responsive.isDesktop(context)) {
      return width * 0.9;
    } else if (Responsive.isTablet(context)) {
      return width * 0.9;
    } else if (Responsive.is800Width(context)) {
      return width * 0.88; // عرض خاص لـ 800
    } else {
      return width * 0.88; // mobile
    }
  }

  double get height {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    // أولاً: تحديد نوع الجهاز بناءً على العرض
    if (Responsive.isDesktop(context)) {
      return height * 0.4; // 40% من الارتفاع
    } else if (Responsive.isTablet(context)) {
      return height * 0.35; // 35% من الارتفاع
    } else if (Responsive.is800Width(context)) {
      return height * 0.30; // 30% من الارتفاع لـ 800
    } else {
      return height * 0.30; // 25% من الارتفاع - mobile
    }
  }

  EdgeInsets get margin {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    if (Responsive.isDesktop(context)) {
      return EdgeInsets.only(top: height * 0.15); // 15%
    } else if (Responsive.isTablet(context)) {
      return EdgeInsets.only(top: height * 0.12); // 12%
    } else if (Responsive.is800Width(context)) {
      return EdgeInsets.only(top: height * 0.10); // 10% لـ 800
    } else {
      return EdgeInsets.only(top: height * 0.08); // 8% - mobile
    }
  }
}

/// 🔹 كلاس لحساب أبعاد الصورة
class PhotoDimensions {
  final BuildContext context;
  PhotoDimensions(this.context);

  double get right {
    final width = MediaQuery.of(context).size.width;

    if (Responsive.isDesktop(context)) {
      return width * 0.08;
    } else if (Responsive.isTablet(context)) {
      return width * 0.05;
    } else if (Responsive.is800Width(context)) {
      return width * 0.04; // 4% لـ 800
    } else {
      return width * 0.03; // mobile
    }
  }

  double get top {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    if (Responsive.isDesktop(context)) {
      return height * 0.02;
    } else if (Responsive.isTablet(context)) {
      return height * 0.01;
    } else if (Responsive.is800Width(context)) {
      return height * 0.015; // 1.5% لـ 800
    } else {
      return height * 0.01;
    }
  }

  double get width {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    if (Responsive.isDesktop(context)) {
      return width * 0.25;
    } else if (Responsive.isTablet(context)) {
      return width * 0.25;
    } else if (Responsive.is800Width(context)) {
      return width * 0.35; // 35% لـ 800
    } else {
      return width * 0.40;
    }
  }

  double get height {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    if (Responsive.isDesktop(context)) {
      return height * 0.59;
    } else if (Responsive.isTablet(context)) {
      return height * 0.50;
    } else if (Responsive.is800Width(context)) {
      return height * 0.45; // 45% لـ 800
    } else {
      return height * 0.40;
    }
  }
}

class Centerviwes extends StatelessWidget {
  const Centerviwes({super.key});

  @override
  Widget build(BuildContext context) {
    final dimensions = ContainerDimensions(context);

    return Container(
      margin: dimensions.margin,
      width: dimensions.width,
      height: dimensions.height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromARGB(255, 27, 27, 31),
            Color.fromARGB(255, 19, 18, 18),
          ],
        ),
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}

class Photos extends StatelessWidget {
  const Photos({super.key});

  @override
  Widget build(BuildContext context) {
    final dimensions = PhotoDimensions(context);

    return Positioned(
      right: dimensions.right,
      top: dimensions.top,
      child: Container(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset(
            'assets/sa94.png',
            width: dimensions.width,
            height: dimensions.height,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
