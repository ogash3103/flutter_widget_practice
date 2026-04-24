import 'package:flutter/material.dart';

class FbnPractice extends StatefulWidget {
  const FbnPractice({super.key});

  @override
  State<FbnPractice> createState() => _FbnPracticeState();
}

class _FbnPracticeState extends State<FbnPractice> {
  List<String> todos = [];

  void _addTodo() {
    setState(() {
      todos.add("Yangi vazifa ${todos.length + 1}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Vazifalar")),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(todos[index]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addTodo,
        tooltip: "Yangi vazifa qo'shish", // Accessibility uchun
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
