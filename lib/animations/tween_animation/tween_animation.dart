import 'package:flutter/material.dart';

// TweenAnimationBuilder is a widget that animates changes between values over time
// using a Tween. It's useful for custom animations where you can define intermediate
// values (e.g., colors, sizes, or alignments) without needing a controller.

class TweenAnimation extends StatelessWidget {
  const TweenAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
        tween: Tween(begin: 100.0, end: 200.0),
        duration: const Duration(seconds: 1),
        builder: (context, value, child) {
          return Container(
            height: value,
            width: value,
            color: Colors.amber,
          );
        });
  }
}
