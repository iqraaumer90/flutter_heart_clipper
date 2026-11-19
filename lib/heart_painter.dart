import 'package:flutter/material.dart';

class HeartPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Size(:width, :height) = size;

    Path heartPath = Path();

    heartPath.moveTo(width * 0.5, height * 0.93);

    // LEFT SIDE
    heartPath.cubicTo(
      width * 0.22,
      height * 0.76,
      width * 0.02,
      height * 0.48,
      width * 0.08,
      height * 0.30,
    );

    // LEFT UPPER CORNER
    heartPath.cubicTo(
      width * 0.12,
      height * 0.12,
      width * 0.40,
      height * 0.12,
      width * 0.5,
      height * 0.36,
    );

    // RIGHT UPPER CORNER
    heartPath.cubicTo(
      width * 0.60,
      height * 0.12,
      width * 0.88,
      height * 0.12,
      width * 0.92,
      height * 0.30,
    );

    // RIGHT SIDE
    heartPath.cubicTo(
      width * 0.98,
      height * 0.48,
      width * 0.78,
      height * 0.76,
      width * 0.5,
      height * 0.93,
    );

    canvas.drawShadow(heartPath, const Color(0xFFE91E63), 12, true);

    Paint paint = Paint()
      ..shader = const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Color(0xFFFF647F), Color(0xFFF72568), Color(0xFFC2185B)],
      ).createShader(Rect.fromLTWH(0, 0, width, height));

    canvas.drawPath(heartPath, paint);
  }

  @override
  bool shouldRepaint(HeartPainter oldDelegate) => false;
}
