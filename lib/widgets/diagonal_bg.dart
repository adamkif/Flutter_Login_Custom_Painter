import 'package:flutter/material.dart';

class DiagonalBackground extends StatelessWidget {
  const DiagonalBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: CustomPaint(
        painter: DiagonalPainter(),
      ),
    );
  }
}

class DiagonalPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.pink
      ..style = PaintingStyle.fill;

    final path = Path()
      ..lineTo(0, size.height * 0.4)
      ..lineTo(size.width, size.height * 0.3)
      ..lineTo(size.width, 0);
    // ..lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
