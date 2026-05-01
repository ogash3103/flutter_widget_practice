import 'package:flutter/material.dart';

class SingleChildScrollViewPractice extends StatefulWidget {
  const SingleChildScrollViewPractice({super.key});

  @override
  State<SingleChildScrollViewPractice> createState() =>
      _SingleChildScrollViewPracticeState();
}

class _SingleChildScrollViewPracticeState extends State<SingleChildScrollViewPractice> {
 final margin = EdgeInsets.symmetric(vertical:15, horizontal: 7.5);
  final firstController = ScrollController();

@override
  void initState() {
    super.initState();
    firstController.addListener(() {
      debugPrint("Position: ${firstController.position}");
      debugPrint("offset: ${firstController.offset}");
    });
  }

  @override
  void dispose() {
  firstController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 40, horizontal: 15),
        controller: firstController,
        reverse: true,
        child: Column(
          children: [
              Card(
                margin: margin,
                color: Colors.cyan,
                elevation: 10,
                shadowColor: Colors.cyan,
                child: SizedBox(
                  height: 250,
                  width: MediaQuery.sizeOf(context).width,
                ),
              ),
              block(),
            infoCard(Colors.yellow),
            infoCard(Colors.green),
            block(),
            infoCard(Colors.yellow),
            infoCard(Colors.green),
            block(),
            infoCard(Colors.yellow),
            infoCard(Colors.green),
          ],
        ),
      ),
    );
  }
}

Widget block() {
  return Row(
    children: [
      Expanded(
        flex: 2,
        child: Container(
          height: 50,
          margin: EdgeInsets.symmetric(vertical:20, horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.deepOrange,
            borderRadius: BorderRadius.circular(14),
          ),
        ),
      ),
      Expanded(
        flex: 1,
        child: Container(
          height: 50,
          margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.deepPurpleAccent,
            borderRadius: BorderRadius.circular(14),
          ),
        ),
      ),
    ],
  );
}

Widget infoCard(Color color) {
  return Stack(
    children: [
      Card(
        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        color: color,
        elevation: 10,
        shadowColor: Colors.cyan,
        child: SizedBox(
          height: 150,
          width: 300,
        ),
      ),

      Container(

      )
    ],

  );
}
