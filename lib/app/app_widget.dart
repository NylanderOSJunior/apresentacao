import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:apresentacao/app/core/theme.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Apresentação UNIRV',
      theme: theme,
    ).modular();
  }
}
