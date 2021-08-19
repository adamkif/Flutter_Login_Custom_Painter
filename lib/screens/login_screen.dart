import 'package:flutter/material.dart';
import 'package:flutter_login_custom_painter/widgets/curve_background.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CurveBackground(),
      // body: DiagonalBackground(),
      // body: RadiusCircularBG(),
      // body: RhombusBackground(),
      // body: SquareBackground(),
      // body: TriangleBackground(),
      // body: WavesBackground(),
      // body: WavesGradientBG(),
    );
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