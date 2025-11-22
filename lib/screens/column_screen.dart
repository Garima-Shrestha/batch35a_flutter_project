// Homework

import 'package:flutter/material.dart';

class ColumnScreen extends StatelessWidget {
  const ColumnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Column Screen"), centerTitle: true),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Container(
          width: 300,
          height: 400,
          decoration: BoxDecoration(
            color: Colors.blue[100],
            border: Border.all(color: Colors.black, width: 3)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16),
              Text("First", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              SizedBox(height: 16),
              Text("Second", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              SizedBox(height: 16),
              Text("Third", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),

              SizedBox(height: 16),
              RichText(text: const TextSpan(
                text: "Hello ",
                style: TextStyle(color: Colors.purple, fontSize: 40),
                children: <TextSpan>[
                  TextSpan(
                    text: "World",
                    style: TextStyle(fontWeight: FontWeight.bold)
                  ),
                  TextSpan(
                    text: "!!!",
                      style: TextStyle(color: Colors.black)
                  )
                ]
              ))
            ],
          ),
        ),
      ),
    );
  }
}
