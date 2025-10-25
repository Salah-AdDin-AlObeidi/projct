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
    } else {
      return width * 0.95; // mobile
    }
  }

  double get height {
    final height = MediaQuery.of(context).size.height;
    if (height >= 800 && height <= 1999) {
      return 380; // ارتفاع أكبر للشاشات الطويلة
    } else if (Responsive.isDesktop(context)) {
      return 343;
    } else if (Responsive.isTablet(context)) {
      return 300;
    } else {
      return 210; // mobile
    }
  }

  EdgeInsets get margin {
    final height = MediaQuery.of(context).size.height;
    if (height >= 800 && height <= 1999) {
      return EdgeInsets.only(top: 120); // هامش أكبر للشاشات الطويلة
    } else if (Responsive.isDesktop(context)) {
      return EdgeInsets.only(top: 108);
    } else if (Responsive.isTablet(context)) {
      return EdgeInsets.only(top: 80);
    } else {
      return EdgeInsets.only(top: 60); // mobile
    }
  }
}

/// 🔹 كلاس لحساب أبعاد الصورة
class PhotoDimensions {
  final BuildContext context;
  PhotoDimensions(this.context);

  double get right {
    final width = MediaQuery.of(context).size.width;
    if (width >= 800 && width <= 1999) {
      return width * 0.08; // 8% للشاشات الطويلة
    } else if (Responsive.isDesktop(context)) {
      return width * 0.10;
    } else if (Responsive.isTablet(context)) {
      return width * 0.05;
    } else {
      return width * 0.03; // mobile
    }
  }

  double get top {
    final height = MediaQuery.of(context).size.height;
    if (height >= 800 && height <= 1999) {
      return height * 0.02; // 2% للشاشات الطويلة
    } else if (Responsive.isDesktop(context)) {
      return height * 0.00;
    } else if (Responsive.isTablet(context)) {
      return height * 0.05;
    } else {
      return height * 0.05; // mobile
    }
  }

  double get width {
    final width = MediaQuery.of(context).size.width;
    if (width >= 800 && width <= 1999) {
      return width * 0.4; // 40% للشاشات الطويلة
    } else if (Responsive.isDesktop(context)) {
      return width * 0.3;
    } else if (Responsive.isTablet(context)) {
      return width * 0.5;
    } else {
      return width * 0.6; // mobile
    }
  }

  double get height {
    final height = MediaQuery.of(context).size.height;
    if (height >= 800 && height <= 1999) {
      return height * 0.8; // 80% للشاشات الطويلة
    } else if (Responsive.isDesktop(context)) {
      return height * 0.9;
    } else if (Responsive.isTablet(context)) {
      return height * 0.5;
    } else {
      return height * 0.4; // mobile
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
            Color.fromARGB(255, 17, 17, 20),
          ],
        ),
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
      child: Image.asset(
        'assets/sa94.png',
        width: dimensions.width,
        height: dimensions.height,
      ),
    );
  }
}
