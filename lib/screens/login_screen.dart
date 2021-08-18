import 'package:flutter/material.dart';
import 'package:flutter_login_custom_painter/widgets/triangle_background.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: DiagonalBackground(),
      // body: RadiusCircularBG(),
      // body: SquareBackground(),
      body: TriangleBackground(),
    );
  }
}
