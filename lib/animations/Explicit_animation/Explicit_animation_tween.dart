import 'package:flutter/material.dart';

class ExplicitAnimationTween extends StatefulWidget {
  const ExplicitAnimationTween({super.key});

  @override
  State<ExplicitAnimationTween> createState() => _ExplicitAnimationTweenState();
}

class _ExplicitAnimationTweenState extends State<ExplicitAnimationTween>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> routet_animation;
  late Animation<AlignmentGeometry> geometry_animation;
  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..repeat(reverse: true);
    routet_animation = Tween<double>(begin: 0, end: 2).animate(controller);
    geometry_animation = Tween<AlignmentGeometry>(
            begin: Alignment.centerLeft, end: Alignment.centerRight)
        .animate(controller);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlignTransition(
      alignment: geometry_animation,
      child: RotationTransition(
        turns: routet_animation,
        child: Container(
          width: 200,
          height: 200,
          color: Colors.red,
        ),
      ),
    );
  }
}
