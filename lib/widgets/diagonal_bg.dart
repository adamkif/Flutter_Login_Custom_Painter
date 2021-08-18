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
      ..lineTo(0, size.height * 0.5)
      ..lineTo(size.width, size.height * 0.4)
      ..lineTo(size.width, 0);
    // ..lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

/* This Widget could get rebuilt by the framework multiple times, but as long as the Color passed to the constructor doesn't change, and the CustomPainter doesn't depend on anything else, then there's no point in repainting the CustomPaint. When the color does change, we want to tell the framework that it should call paint.

So the CustomPainter can hint to the framework by returning true iff the color has changed.

class MyPainter extends CustomPainter {
  final Color color;

  MyPainter(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    // this paint function uses color
    // as long as color is the same there's no point painting again
    // so shouldRepaint only returns true if the color has changed
  }

  @override
  bool shouldRepaint(MyPainter oldDelegate) => color != oldDelegate.color;
}
*/