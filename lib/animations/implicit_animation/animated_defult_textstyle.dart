// AnimatedDefaultTextStyle is a widget that smoothly transitions the style (e.g., font size, color, weight)
// of its child text over a given duration. It's great for animating text appearance without extra logic.
import 'package:flutter/material.dart';

class AnimatedDefultTextstyle extends StatefulWidget {
  const AnimatedDefultTextstyle({super.key});

  @override
  State<AnimatedDefultTextstyle> createState() =>
      _AnimatedDefultTextstyleState();
}

class _AnimatedDefultTextstyleState extends State<AnimatedDefultTextstyle> {
  double? size = 20;
  Color color = Colors.deepOrange;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedDefaultTextStyle(
        duration: const Duration(seconds: 1),
        style: TextStyle(fontSize: size, color: color),
        child: InkWell(
            onTap: () {
              setState(() {
                size = 40;
                color = Colors.green;
              });
            },
            child: const Text('Animedted Text Style')),
      ),
    );
  }
}
