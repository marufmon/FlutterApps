import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:palanateui/weiged/const.dart';

class TeamInfoDemo extends StatefulWidget {
  const TeamInfoDemo({super.key});

  @override
  State<TeamInfoDemo> createState() => _TeamInfoDemoState();
}

class _TeamInfoDemoState extends State<TeamInfoDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cardColor,
    );
  }
}
