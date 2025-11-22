//HOMEWORK

import 'package:flutter/material.dart';

class RowScreen extends StatelessWidget {
  const RowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Row Screen"), centerTitle: true),
      body: Padding(
        padding: EdgeInsets.all(12.0),
        child: Container(
          height: 200,
          width: 400,
          decoration: BoxDecoration(
            color: Colors.blue[100],
            border: Border.all(color: Colors.black, width: 2),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,   // equal spacing around each child
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("First", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              Text("Second", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              Text("Third", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            ],
          )
        ),
      ),
    );
  }
}
