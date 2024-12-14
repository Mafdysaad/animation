import 'package:flutter/material.dart';

// AnimatedContainer is a widget that smoothly transitions its properties (e.g., width, height, color) over time.
// It's useful for creating animations without needing explicit controllers or complex logic.

class Anim_contaier extends StatefulWidget {
  const Anim_contaier({super.key});

  @override
  State<Anim_contaier> createState() => _AnimatedcontanerState();
}

class _AnimatedcontanerState extends State<Anim_contaier> {
  double? width = 200, heigth = 200;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {
          setState(() {
            width = width != 400 ? 400 : 200;
            heigth = heigth != 400 ? 400 : 200;
          });
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          width: width,
          height: heigth,
          color: Colors.red,
        ),
      ),
    );
  }
}
