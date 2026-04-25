import 'package:flutter/material.dart';

class ImagePractice extends StatelessWidget {
  const ImagePractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("AppBar"), backgroundColor: Colors.green),

        body: Center(
          child: Opacity(
            opacity: .8,
            child: Container(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.network('https://picsum.photos/300/500',
                    fit: BoxFit.cover,
                  ),
                  Center(
                    child: Text("hello", style: TextStyle(fontSize: 30),),
                  )
                ],
              ),
            ),
          ),
        ),

        floatingActionButton: FloatingActionButton(
        onPressed: ()
    =>
        debugPrint("Tap")
    ,
    child: Icon(Icons.camera_alt_outlined),
    ),
    );
  }
}
