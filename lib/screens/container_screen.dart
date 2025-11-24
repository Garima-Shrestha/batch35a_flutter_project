import 'package:flutter/material.dart';

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Container Screen"), centerTitle: true),
      body:
      // Center(              // Bringing the container to the center
        // child: Container(
        //   height: 200,
        //   width: 200,
        //   alignment: Alignment.center,     // Changing the alignment [Bringing the Text to the center]
        //   child: const Text('Hello World'),
        //   decoration: BoxDecoration(
        //     color: Colors.amberAccent,
        //     border: Border.all(color: Colors.black, width: 2),
        //     shape: BoxShape.circle,     // Making container Circle  [Changing the shape of the container]
        //   ),
        // ),
      // ),

      Container(
        height: double.infinity,
        width: double.infinity,
        alignment: Alignment.centerRight,
        child: const Text('Hello', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold))
    )
    );
  }
}
