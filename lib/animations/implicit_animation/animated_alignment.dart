import 'package:flutter/material.dart';

// AnimatedAlign is a widget that smoothly animates changes to a child's alignment within its parent.
// It's useful for repositioning a widget with a smooth transition based on alignment changes.

class Animated_Alignment extends StatefulWidget {
  const Animated_Alignment({super.key});

  @override
  State<Animated_Alignment> createState() => _Animated_AlignmentState();
}

class _Animated_AlignmentState extends State<Animated_Alignment> {
  Alignment alignment = Alignment.topLeft;

  @override
  Widget build(BuildContext context) {
    return AnimatedAlign(
      alignment: alignment,
      duration: const Duration(seconds: 2),
      child: InkWell(
        onTap: () {
          alignment = Alignment.center;
          setState(() {});
        },
        child: Container(
          height: 200,
          width: 200,
          color: Colors.green,
        ),
      ),
    );
  }
}
