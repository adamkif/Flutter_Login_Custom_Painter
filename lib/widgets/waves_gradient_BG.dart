import 'package:flutter/material.dart';

class WavesGradientBG extends StatelessWidget {
  const WavesGradientBG({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: CustomPaint(
        painter: GradientPainter(),
      ),
    );
  }
}

class GradientPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..shader = LinearGradient(colors: [Color(0xffE55D87), Color(0xff5FC3E4)])
          .createShader(
        Rect.fromCircle(
          center: Offset(size.width * 0.5, 0),
          radius: 180,
        ),
      )
      ..style = PaintingStyle.fill;

    final path = Path()
      ..lineTo(0, size.height * 0.3)
      ..quadraticBezierTo(
        size.width * 0.25,
        size.height * 0.35,
        size.width * 0.5,
        size.height * 0.3,
      )
      ..quadraticBezierTo(
        size.width * 0.75,
        size.height * 0.25,
        size.width,
        size.height * 0.3,
      )
      ..lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
