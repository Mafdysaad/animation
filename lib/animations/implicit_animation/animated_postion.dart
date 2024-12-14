import 'package:flutter/material.dart';

// AnimatedPositioned is a widget that smoothly transitions its position within a Stack.
// It's perfect for animating the movement of widgets when their position changes dynamically.

class AnimatedPostion extends StatefulWidget {
  const AnimatedPostion({super.key});

  @override
  State<AnimatedPostion> createState() => _AnimatedPostionState();
}

class _AnimatedPostionState extends State<AnimatedPostion> {
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
            AnimatedPositioned(
                duration: const Duration(seconds: 2),
                left: pstio,
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
