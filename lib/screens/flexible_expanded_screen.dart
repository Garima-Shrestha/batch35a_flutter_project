import 'package:flutter/material.dart';

class FlexibleExpandedScreen extends StatelessWidget {
  const FlexibleExpandedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flexible Expanded Screen"), centerTitle: true),
      body: Column(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () => print("I am container one"),   // This is a function, container1 ma one choti tap garyo bhanye "Run" ma "I am container one" print hunxa.
              child: Container (
                width: double.infinity,
                color: Colors.yellow,
                alignment: Alignment.center,
                child: Text('Container1'),
              ),
            ),
          ),
          // Flexible(
          //   // fit: FlexFit.loose,   // esle if space kaam xa bhanye teati mai adjust garxa. This fit is of Flexible
          //   fit: FlexFit.tight,   // esle jati space baki xa teati linxa
          //   child: Container(
          //     width: double.infinity,
          //     height: 300,
          //     color: Colors.green[400],
          //     child: Text('Container2'),
          //   ),
          // ),
          Expanded(
            child: GestureDetector(
              onDoubleTap: () => print("I am container two"),   // This is a function, container2 ma two choti tap garyo bhanye "Run" ma "I am container two" print hunxa.
              child: Container(
                width: double.infinity,
                color: Colors.green[400],
                alignment: Alignment.center,
                child: Text('Container2'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Dubai Container ma expanded halyo bhanye dubai le equal space linxa, for both potrait and landscape screen.
// Gesture is for when you tap the screen