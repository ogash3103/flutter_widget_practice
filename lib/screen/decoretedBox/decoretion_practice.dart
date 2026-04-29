import 'dart:ui';

import 'package:flutter/material.dart';

class DecorationPractice extends StatelessWidget {
  const DecorationPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 250,
          width: 380,
          child: DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF6A11CB), Color(0xFF2575FC)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(24),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFF2575FC).withValues(alpha: 0.4),
                  blurRadius: 20,
                  offset: Offset(0, 10),
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.credit_card, color: Colors.white, size: 40),
                  SizedBox(height: 20),
                  Text(
                    "**** **** **** 4242",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      letterSpacing: 2,
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("JOHN DOE", style: TextStyle(color: Colors.white70)),
                      Text("12/26", style: TextStyle(color: Colors.white70)),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      )
    );
  }
}
