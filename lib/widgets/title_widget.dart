import 'dart:ui';

import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'todo app',
      textAlign: TextAlign.center,
      style: TextStyle(
          color: Colors.orange, fontSize: 65, fontWeight: FontWeight.w200),
    );
  }
}
