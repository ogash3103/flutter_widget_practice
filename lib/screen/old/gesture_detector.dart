import 'dart:ui';
import 'package:flutter/material.dart';

class GestureDetectorPractice extends StatefulWidget {
  const GestureDetectorPractice({super.key});

  @override
  State<GestureDetectorPractice> createState() =>
      _GestureDetectorPracticeState();
}

class _GestureDetectorPracticeState extends State<GestureDetectorPractice> {
  static const _boxSize = 100.0;
  double _x = 100;
  double _y = 100;
  double _scale = 1.0;
  Color _color = Colors.blue;
  double _size = 100;

  void _onPanUpdate(DragUpdateDetails details, Size screen) {
    setState(() {
      _x = clampDouble(_x + details.delta.dx, 0, screen.width - _boxSize);
      _y = clampDouble(_y + details.delta.dy, 0, screen.height - _boxSize);
    });
  }

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: GestureDetector(
                onTap: () => setState(() => _color = Colors.red),
                onDoubleTap: () => setState(() => _size = 200),
                onLongPress: () => setState(() {
                  _color = Colors.blue;
                  _size = 100;
                }),
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  width: _size,
                  height: _size,
                  color: _color,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
