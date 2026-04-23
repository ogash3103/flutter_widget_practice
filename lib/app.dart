import 'package:flutter/material.dart';
import 'package:flutter_widget_practice/screen/gesture_detector.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GestureDetectorPractice(),
    );
  }
}
