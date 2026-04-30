import 'package:flutter/material.dart';
import 'package:flutter_widget_practice/screen/card/storage_card.dart';

class CardPractice extends StatelessWidget {
  const CardPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE8EAF6),
      body: Center(
        child: Padding(padding: EdgeInsets.all(24),
        child: StorageCard(
          usedMb: 384.8,
          totalGB: 30,
        ),
        ),
      ),
    );
  }
}
