import 'package:first_project/Screens/Dashboard.dart';
import 'package:first_project/Screens/Home.dart';
import 'package:first_project/Screens/form.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My first flutter app",
      themeMode: ThemeMode.system,
      home: DashBoard(),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}
