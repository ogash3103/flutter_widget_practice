import 'package:flutter/material.dart';

class FbnPractice extends StatefulWidget {
  const FbnPractice({super.key});

  @override
  State<FbnPractice> createState() => _FbnPracticeState();
}

class _FbnPracticeState extends State<FbnPractice> {
  bool isPlaying = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            isPlaying = !isPlaying;
          });
        },
        child: AnimatedSwitcher(
          duration: Duration(milliseconds: 300),
          transitionBuilder: (Widget child, Animation<double> animation) {
            return RotationTransition(
              turns: Tween(begin: 0.0, end: 0.5).animate(animation),
              child: child,
            );
          },
          child: Icon(
            isPlaying ? Icons.pause : Icons.play_arrow,
            key: ValueKey<bool>(isPlaying),
          ),
        ),
      ),
    );
  }
}
