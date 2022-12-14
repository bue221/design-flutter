import 'dart:math';
import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_const
    const boxDecoration = const BoxDecoration(
        gradient: LinearGradient(
            colors: [Color(0xff2E305F), Color(0xff202333)],
            end: Alignment.topCenter,
            stops: [0.2, 0.8],
            begin: Alignment.bottomCenter));

    return Stack(children: [
      // Purple gradient
      Container(
        decoration: boxDecoration,
      ),
      // Pink box
      const Positioned(top: -100, left: -30, child: _PinkBox())
    ]);
  }
}

class _PinkBox extends StatelessWidget {
  const _PinkBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -pi / 5,
      child: Container(
        width: 360,
        height: 360,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80),
            gradient: const LinearGradient(colors: [
              Color.fromRGBO(236, 98, 188, 1),
              Color.fromRGBO(241, 141, 172, 1)
            ])),
      ),
    );
  }
}
