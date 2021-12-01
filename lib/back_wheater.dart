import 'package:flutter/material.dart';

class BackWheater extends StatelessWidget {
  const BackWheater({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        const GradientBack(),
        Positioned(
            bottom: 0.0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 210.0,
              color: Colors.white,
            ))
      ],
    );
  }
}

class GradientBack extends StatelessWidget {
  const GradientBack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color(0xFFffbb00),
        Color(0xFFf38c02),
      ], begin: FractionalOffset(1.0, 0.1), end: FractionalOffset(1.0, 0.9))),
    );
  }
}
