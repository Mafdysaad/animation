import 'package:flutter/material.dart';
// AnimatedPadding is a widget that smoothly animates changes to its padding value over time.
// It's useful for creating dynamic spacing around a widget with a smooth transition effect.

class Animated_Padding extends StatefulWidget {
  const Animated_Padding({super.key});

  @override
  State<Animated_Padding> createState() => _Animated_PaddingState();
}

class _Animated_PaddingState extends State<Animated_Padding> {
  double padd = 10;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 400,
        height: 400,
        color: Colors.red,
        child: AnimatedPadding(
          duration: const Duration(seconds: 2),
          padding: EdgeInsets.all(padd),
          child: InkWell(
            onTap: () {
              padd = 40;
              setState(() {});
            },
            child: Container(
              height: 400,
              width: 400,
              color: Colors.green,
            ),
          ),
        ),
      ),
    );
  }
}
