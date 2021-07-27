import 'package:flutter/material.dart';

Widget buildWidget(Widget child) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Widget Testing',
    home: child,
  );
}
