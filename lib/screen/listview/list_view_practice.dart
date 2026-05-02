import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListViewPractice extends StatefulWidget {
  const ListViewPractice({super.key});

  @override
  State<ListViewPractice> createState() => _ListViewPracticeState();
}

class _ListViewPracticeState extends State<ListViewPractice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List view"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 100,
            child: horizontalListView(),
          ),
          Expanded(child: verticalListView()),
        ],
      )
    );
  }
}


Widget horizontalListView() {
  return ListView(
    scrollDirection: Axis.horizontal,
    padding: EdgeInsets.symmetric(vertical: 7.5, horizontal: 5.5),
    children: [
      for(int i = 0; i < 10; i++)
        Container(
          height: 90,
          width: 90,
          margin: EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.primaries[i % Colors.primaries.length], width: 3)
          ),
          child: Icon(CupertinoIcons.person_alt,
            size: 60,
            color: Colors.grey.shade700,
          ),
        )
    ],
  );
}

Widget verticalListView() {
  return ListView(
    scrollDirection: Axis.vertical,
    padding: EdgeInsets.symmetric(vertical: 7.5, horizontal: 10),
    children: [
      for(int i = 0; i < 10; i++)
        SizedBox(
          height: 150,
          child: Card(
            color: Colors.primaries[i % Colors.primaries.length],
            child: Center(
              child: Text("Element: ${i + 1}", style: TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),),
            )
          ),
        ),
    ],
  );
}
