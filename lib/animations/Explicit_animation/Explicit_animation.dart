import 'package:flutter/material.dart';

class ExplicitAnimation extends StatefulWidget {
  const ExplicitAnimation({super.key});

  @override
  State<ExplicitAnimation> createState() => _ExplicitAnimationState();
}

class _ExplicitAnimationState extends State<ExplicitAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController animation_controller;
  @override
  void initState() {
    animation_controller = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 2),
        lowerBound: 100,
        upperBound: 400);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedBuilder(
            animation: animation_controller,
            builder: (context, child) {
              return Container(
                height: animation_controller.value,
                width: animation_controller.value,
                color: Colors.red,
              );
            }),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
                onTap: () => animation_controller.repeat(),
                child: const Text('repeat')),
            InkWell(
                onTap: () => animation_controller.stop(),
                child: const Text('stop')),
            InkWell(
                onTap: () => animation_controller.reverse(),
                child: const Text('reverse')),
            InkWell(
                onTap: () => animation_controller.forward(),
                child: const Text('forward')),
          ],
        )
      ],
    );
  }
}
