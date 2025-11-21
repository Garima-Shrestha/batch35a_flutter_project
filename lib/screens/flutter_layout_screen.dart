import 'package:flutter/material.dart';

class FlutterLayoutScreen extends StatelessWidget {
  const FlutterLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter Layout Screen"), centerTitle: true),

      // 1 row, 3 columns
      // body: Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: Column(
      //     children: [
      //       Container(
      //         height: 150,
      //         decoration: BoxDecoration(
      //           border: Border.all(color: Colors.black, width: 2),
      //         ),
      //         child: Row(
      //           children: [
      //             Column(
      //               children: [
      //                 Icon(Icons.call, size: 80),
      //                 Text("Call", style: TextStyle(fontSize: 20, color: Colors.red)),
      //               ],
      //             ),
      //
      //             Spacer(),   // to give space
      //             Column(
      //               children: [
      //                 Icon(Icons.navigation_outlined, size: 80, color: Colors.green),
      //                 Text("Route", style: TextStyle(fontSize: 20, color: Colors.red))
      //               ],
      //             ),
      //
      //             Spacer(),
      //             Padding(
      //               padding: const EdgeInsets.all(16.0),
      //               child: Column(
      //                 children: [
      //                   Icon(Icons.share, size: 80, color: Colors.blue,),
      //                   Text("Share", style: TextStyle(fontSize: 20, color: Colors.red))
      //                 ],
      //               ),
      //             )
      //           ],
      //         ),
      //       )
      //     ],
      //   ),
      // ),

      // 3 row, 1 columns
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 450,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.call, size: 80),
                      Text("Call", style: TextStyle(fontSize: 20, color: Colors.red)),
                    ],
                  ),

                  Spacer(),   // to give space
                  Row(
                    children: [
                      Icon(Icons.navigation_outlined, size: 80, color: Colors.green),
                      Text("Route", style: TextStyle(fontSize: 20, color: Colors.red))
                    ],
                  ),

                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Icon(Icons.share, size: 80, color: Colors.blue,),
                        Text("Share", style: TextStyle(fontSize: 20, color: Colors.red))
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),

    );
  }
}


// Container bhitra row bhitra columns
// Container bhitra child, row bhitra children, column bhitra children
// Spacer(): to give space