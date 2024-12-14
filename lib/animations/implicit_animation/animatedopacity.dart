import 'package:flutter/material.dart';

// AnimatedOpacity is a widget that smoothly transitions the opacity of its child widget.
// It's ideal for fade-in and fade-out effects without needing explicit animation controllers.

class Animatedopacity extends StatefulWidget {
  const Animatedopacity({super.key});

  @override
  State<Animatedopacity> createState() => _AnimatedopacityState();
}

class _AnimatedopacityState extends State<Animatedopacity> {
  double opacty = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {
          setState(() {
            opacty = opacty != 0 ? 0 : 1;
          });
        },
        child: AnimatedOpacity(
          duration: const Duration(seconds: 1),
          curve: Curves.easeIn,
          opacity: opacty,
          child: Container(
            width: 200,
            height: 200,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
