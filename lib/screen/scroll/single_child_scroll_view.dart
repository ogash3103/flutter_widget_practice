import 'package:flutter/material.dart';

class SingleChildScrollViewPractice extends StatefulWidget {
  const SingleChildScrollViewPractice({super.key});

  @override
  State<SingleChildScrollViewPractice> createState() =>
      _SingleChildScrollViewPracticeState();
}

class _SingleChildScrollViewPracticeState
    extends State<SingleChildScrollViewPractice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        reverse: true,
        child: Column(
          children: [
            for(var i = 0; i < 20; i++)
              Card(
                margin: EdgeInsets.symmetric(vertical: 7.5),
                color: Colors.primaries[i % Colors.primaries.length],
                elevation: 10,
                shadowColor: Colors.primaries[i % Colors.primaries.length],

                child: SizedBox(
                  height: 250,
                  width: MediaQuery.sizeOf(context).width,
                ),
              ),
          ],
        ),
      ),
    );
  }
}

Widget block(Color color) {
  return Container(
    height: 200,
    margin: EdgeInsets.all(20),
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(25),
    ),
  );
}
