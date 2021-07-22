import 'package:flutter/material.dart';
import 'resources/routing.dart';
import 'resources/route_constants.dart';

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: NavigationRoutes.generateRoute,
      initialRoute: homeRoute,
    );
  }
}
