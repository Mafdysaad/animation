import 'package:flutter/material.dart';
// AnimatedPhysicalModel is a widget that animates changes to its physical properties,
// such as shape, elevation, color, and shadow. It is useful for creating smooth transitions
// between different Material-style effects.

class Animated_Physical_Model extends StatefulWidget {
  const Animated_Physical_Model({super.key});

  @override
  State<Animated_Physical_Model> createState() => _AnimatedPhysicalModleState();
}

class _AnimatedPhysicalModleState extends State<Animated_Physical_Model> {
  BoxShape shap = BoxShape.circle;
  Color color = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {
          color = Colors.green;
          shap = BoxShape.rectangle;
          setState(() {});
        },
        child: AnimatedPhysicalModel(
            shape: shap,
            child: Container(
              height: 400,
            ),
            color: color,
            shadowColor: Colors.black,
            duration: const Duration(seconds: 1)),
      ),
    );
  }
}
