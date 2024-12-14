import 'package:flutter/material.dart';

// AnimatedSize is a widget that smoothly animates changes in its child's size (width and height).
// It's useful for creating dynamic layouts where the size of a widget changes based on user interaction or data.

class Animated_Size extends StatefulWidget {
  const Animated_Size({super.key});

  @override
  State<Animated_Size> createState() => _Animated_SizeState();
}

class _Animated_SizeState extends State<Animated_Size> {
  double h = 200;
  double w = 200;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {
          w = 400;
          h = 400;
          setState(() {});
        },
        child: AnimatedSize(
          duration: const Duration(seconds: 2),
          child: Container(
            height: h,
            width: w,
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
