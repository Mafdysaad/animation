import 'package:anmation/animations/implicit_animation/animated_alignment.dart';
import 'package:anmation/animations/implicit_animation/animated_defult_textstyle.dart';
import 'package:anmation/animations/implicit_animation/animated_padding.dart';
import 'package:anmation/animations/implicit_animation/animated_physical_modle.dart';
import 'package:anmation/animations/implicit_animation/animated_postion.dart';
import 'package:anmation/animations/implicit_animation/animated_size.dart';
import 'package:anmation/animations/implicit_animation/animatedcontaner.dart';
import 'package:anmation/animations/implicit_animation/animatedopacity.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Animated_Alignment(),
    );
  }
}