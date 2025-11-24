//stless
import 'package:flutter/material.dart';
import 'package:flutter_project/screens/arithmetic_screen.dart';
import 'package:flutter_project/screens/column_screen.dart';
import 'package:flutter_project/screens/container_screen.dart';
import 'package:flutter_project/screens/flexible_expanded_screen.dart';
import 'package:flutter_project/screens/flutter_layout_screen.dart';
import 'package:flutter_project/screens/image_view_screen.dart';
import 'package:flutter_project/screens/rich_text_screen.dart';
import 'package:flutter_project/screens/row_screen.dart';
import 'package:flutter_project/screens/si_screen.dart';

class App extends StatelessWidget {
  const App({super.key});  // key le jun thau ma change garne ho tyo matra change garaidinxa, change nagarnu parne place ma kei gardaina

  @override
  Widget build(BuildContext context) {
    return MaterialApp(    // Here, MaterialApp is a built-in class.
        // home: ArithmeticScreen(),
        // home: SimpleInterest(),
        // home: RichTextScreen(),
      // home: FlutterLayoutScreen(),
      // home: RowScreen(),
      // home: ColumnScreen(),
      // home: ContainerScreen(),
      // home: ImageViewScreen(),
      home: FlexibleExpandedScreen(),

            debugShowCheckedModeBanner: false,    // debug banner hatauna
    );
  }
}


