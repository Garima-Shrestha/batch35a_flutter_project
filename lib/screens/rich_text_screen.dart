import 'package:flutter/material.dart';

class RichTextScreen extends StatelessWidget {
  const RichTextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Rich Text"), centerTitle: true),
      body: Column(
        children: [
          Container(
            color: Colors.green,
            width: 400,
            child: Text("Hello World", style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.orange,
            )),
          ),

          Container(
            color: Colors.green,
            width: 400,
            child: Text("My name is Garima Shrestha", style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.orange,
            )),
          ),


          // RichText(text: const TextSpan(
          //     text: 'Hello ',
          // style: TextStyle(
          //   color:  Colors.black,
          //   fontSize: 30,
          // ),
          // children: <TextSpan>[
          //   TextSpan(
          //     text: 'bold ',
          //     style: TextStyle(
          //       fontWeight: FontWeight.bold,
          //       color: Colors.amber,
          //     ),
          //   ),
          //   TextSpan(
          //     text:  'world!',
          //   ),
          // ],
          // )
          // )

          RichText(text: const TextSpan(
            text: 'H',
            style: TextStyle(
              color: Colors.red,
              fontSize: 50,
            ),
            children: <TextSpan>[
              TextSpan(
                text: 'ello ',
                style: TextStyle(
                  color:  Colors.black,
                  fontSize: 30,
                ),
              ),
              TextSpan(
                text: 'bold ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.amber,
                  fontSize: 30,
                ),
              ),
              TextSpan(
                text:  'world!',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                )
              ),
            ],
          )
          )
        ],
      ),
    );
  }
}


// Text ma alt + enter => wrap with widget => widget word   ko place ma container lekhne