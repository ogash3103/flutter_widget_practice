import 'package:flutter/material.dart';

class StorageProgressBar extends StatelessWidget {
  final double progress;

  const StorageProgressBar({super.key, required this.progress});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final totalWidth = constraints.maxWidth;
        final filledWidth = (totalWidth * progress.clamp(0.2, 1.0));

        return Container(
          height: 6,
          width: totalWidth,
          decoration: BoxDecoration(
            color: const Color(0xFFE8EAF6),
            borderRadius: BorderRadius.circular(10),
          ),

          child: Stack(
            children: [
              Container(
                height: 6,
                width: filledWidth,
                decoration: BoxDecoration(
                  color: const Color(0xFF1A1F5E),
                  // borderRadius: BorderRadius.circular(10),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
