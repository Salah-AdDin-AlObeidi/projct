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

/// 🔹 كلاس لحساب أبعاد النصوص
class TextDimensions {
  final BuildContext context;
  TextDimensions(this.context);

  // للإحداثيات
  double get left {
    final width = MediaQuery.of(context).size.width;
    if (Responsive.isDesktop(context)) {
      return width * 0.06; // 6%
    } else if (Responsive.isTablet(context)) {
      return width * 0.08; // 8%
    } else {
      return width * 0.10; // 10% - mobile
    }
  }

  double get topFirst {
    final height = MediaQuery.of(context).size.height;
    if (height >= 800 && height <= 1999) {
      return height * 0.08; // 8% للشاشات الطويلة
    } else if (Responsive.isDesktop(context)) {
      return height * 0.05; // 5%
    } else if (Responsive.isTablet(context)) {
      return height * 0.02; // 2%
    } else {
      return height * 0.03; // 3% - mobile
    }
  }

  double get topSecond {
    final height = MediaQuery.of(context).size.height;
    if (height >= 800 && height <= 1999) {
      return height * 0.35; // 35% للشاشات الطويلة
    } else if (Responsive.isDesktop(context)) {
      return height * 0.30; // 30%
    } else if (Responsive.isTablet(context)) {
      return height * 0.25; // 25%
    } else {
      return height * 0.20; // 20% - mobile
    }
  }

  double get topThird {
    final height = MediaQuery.of(context).size.height;
    if (height >= 800 && height <= 1999) {
      return height * 0.42; // 42% للشاشات الطويلة
    } else if (Responsive.isDesktop(context)) {
      return height * 0.43; // 37%
    } else if (Responsive.isTablet(context)) {
      return height * 0.35; // 32%
    } else {
      return height * 0.27; // 27% - mobile
    }
  }

  // لحجم الخط
  double get fontSizeFirst {
    final width = MediaQuery.of(context).size.width;
    if (width >= 800 && width <= 1999) {
      return 42; // حجم وسيط للشاشات الطويلة
    } else if (Responsive.isDesktop(context)) {
      return 45;
    } else if (Responsive.isTablet(context)) {
      return 35;
    } else {
      return 25; // mobile
    }
  }

  double get fontSizeSecond {
    final width = MediaQuery.of(context).size.width;
    if (width >= 800 && width <= 1999) {
      return 41; // حجم وسيط للشاشات الطويلة
    } else if (Responsive.isDesktop(context)) {
      return 40;
    } else if (Responsive.isTablet(context)) {
      return 26;
    } else {
      return 20; // mobile
    }
  }

  double get fontSizeThird {
    final width = MediaQuery.of(context).size.width;
    if (width >= 800 && width <= 1999) {
      return 14; // حجم أصغر للشاشات الطويلة
    } else if (Responsive.isDesktop(context)) {
      return 13;
    } else if (Responsive.isTablet(context)) {
      return 9;
    } else {
      return 8; // mobile
    }
  }
}

/// 🔹 كلاس للنص الأول "Software Engineer"
class FirstText extends StatelessWidget {
  const FirstText({super.key});

  @override
  Widget build(BuildContext context) {
    final dimensions = TextDimensions(context);

    return Positioned(
      left: dimensions.left,
      top: dimensions.topFirst,
      child: Text(
        'Software\nEngineer',
        style: TextStyle(
          color: Colors.white, 
          fontSize: dimensions.fontSizeFirst,
          height: 1.2, // للتحكم في المسافة بين السطور
        ),
      ),
    );
  }
}

/// 🔹 كلاس للنص الثاني "Salah Ad-Din Alobaidi"
class SecondText extends StatelessWidget {
  const SecondText({super.key});

  @override
  Widget build(BuildContext context) {
    final dimensions = TextDimensions(context);

    return Positioned(
      left: dimensions.left,
      top: dimensions.topSecond,
      child: Text(
        'Salah Ad-Din Alobaidi',
        style: TextStyle(
          color: Colors.blue,
          fontSize: dimensions.fontSizeSecond,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

/// 🔹 كلاس للنص الثالث "Experience Text"
class ExperienceText extends StatelessWidget {
  const ExperienceText({super.key});

  @override
  Widget build(BuildContext context) {
    final dimensions = TextDimensions(context);

    return Positioned(
      left: dimensions.left,
      top: dimensions.topThird,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.5, // 50% من عرض الشاشة
        child: Text(
          'Hello, I am a software engineer with two years of experience in\n.NET and databases, and some brief experience in Flutter.',
          style: TextStyle(
            color: Colors.white, // لون أبيض
            fontSize: dimensions.fontSizeThird, // حجم خط أصغر
            height: 1.4, // مسافة بين السطور
          ),
          softWrap: true, // السماح بكسر السطور
          maxLines: 3, // أقصى عدد للسطور
          overflow: TextOverflow.ellipsis, // ... إذا تجاوز النص المساحة
        ),
      ),
    );
  }
}