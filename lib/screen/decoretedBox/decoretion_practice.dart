import 'package:flutter/material.dart';

class DecorationPractice extends StatelessWidget {
  const DecorationPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(padding: EdgeInsets.all(20),
          child: ClipRRect(
            clipBehavior: Clip.hardEdge,
            borderRadius: BorderRadius.all(Radius.circular(30)),
            child: Image(image: AssetImage("asset/images/yapon_image.jpg")),
          ),
        ),
      ),
    );
  }
}
