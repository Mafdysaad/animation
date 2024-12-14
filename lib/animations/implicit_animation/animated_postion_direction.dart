import 'package:flutter/material.dart';

// AnimatedPositionedDirectional is a widget that smoothly transitions its position
// in a Stack using directional properties (start, end, top, bottom).
// It's useful for RTL (right-to-left) layouts to ensure position adapts to text direction.

class AnimatedPostionDirection extends StatefulWidget {
  const AnimatedPostionDirection({super.key});

  @override
  State<AnimatedPostionDirection> createState() => _AnimatedPostionState();
}

class _AnimatedPostionState extends State<AnimatedPostionDirection> {
  double pstio = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.amber,
      child: InkWell(
        onTap: () {
          pstio = 600;
          setState(() {});
        },
        child: Stack(
          children: [
            AnimatedPositionedDirectional(
                duration: const Duration(seconds: 2),
                start: pstio,
                bottom: pstio,
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.red,
                ))
          ],
        ),
      ),
    );
  }
}
