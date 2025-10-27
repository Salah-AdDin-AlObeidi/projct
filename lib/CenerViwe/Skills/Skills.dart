import 'package:flutter/material.dart';

class SkillCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  final Color backgroundColor;
  final double width;
  final double height;
  final double descriptionFontSize; // إضافة الخاصية الجديدة

  const SkillCard({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
    this.backgroundColor = const Color.fromARGB(255, 128, 128, 128),
    this.width = 400,
    this.height = 200,
    this.descriptionFontSize = 10, // قيمة افتراضية
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        
        color: backgroundColor,
        width: width,
        height: height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // الأيقونة
            Icon(icon, size: 50, color: Colors.white),
            const SizedBox(height: 16),
            // العنوان
            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            // الشرح - تم التعديل هنا لاستخدام descriptionFontSize
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                description,
                style: TextStyle(
                  // استخدام TextStyle مع المتغير الجديد
                  fontSize: descriptionFontSize, // هنا التغيير المهم
                  color: Colors.white70,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
