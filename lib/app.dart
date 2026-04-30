import 'package:flutter/material.dart';
import 'package:flutter_widget_practice/screen/card/storage_progress_bar.dart';
import 'package:flutter_widget_practice/screen/card/card.dart';
import 'package:flutter_widget_practice/screen/decoretedBox/decoretion_practice.dart';
import 'package:flutter_widget_practice/screen/image/image.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CardPractice(),
    );
  }
}
