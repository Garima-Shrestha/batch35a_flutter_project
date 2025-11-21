import 'package:flutter/material.dart';

// class ArithmeticScreen extends StatelessWidget {
//   const ArithmeticScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(    // Here, Scaffold is a built-in class.
//       appBar: AppBar(title: Text("App bar"), backgroundColor: Colors.pink),
//       body: Text("Hello World!!!"),
//     );
//   }
// }



// Single Child : child
// Multichild: children : [] -> column and row
// column-> top to bottom
// row -> left to right


// Two types of widgets
// 1. StatelessWidget : jati khera data/state change hudaina
// 2. StatefulWidget : jati khera data/state change hunxa


// stful
class ArithmeticScreen extends StatefulWidget {
  const ArithmeticScreen({super.key});

  @override
  State<ArithmeticScreen> createState() => _ArithmeticScreenState();
}

class _ArithmeticScreenState extends State<ArithmeticScreen> {
  int first = 0;
  int second = 0;
  int result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(    // Here, Scaffold is a built-in class.
      appBar: AppBar(title: Text("Arithmetic"), backgroundColor: Colors.pink),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            TextField(
              onChanged: (value){
                first = int.parse(value);
              },
              decoration: InputDecoration(
                labelText: "Enter First Number: ",
                hintText: "Eg. 12",
                border: OutlineInputBorder(),  // Border banaunxa
              ),
            ),
            // Invisible box
            SizedBox(height: 8),
            TextField(
              onChanged: (value){
                second = int.parse(value);
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                ),
                enabledBorder: OutlineInputBorder(   // when you do not click on the textfield
                  borderSide: BorderSide(color: Colors.red),
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                ),
                focusedBorder: OutlineInputBorder(        // when you click on the textfield
                  borderSide: BorderSide(color: Colors.green),
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                ),
                labelText: "Enter Second Number: ",
                hintText: "Eg. 13",
              ),
            ),
            // Invisible box
            SizedBox(height: 8),
            // Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: (){
                setState(() {
                  result = first + second;
                });
              },
                  child: Text("Add", style: TextStyle(fontSize: 30))),
            ),

            SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: (){
                setState(() {
                  result = first - second;
                });
              },
                  child: Text("Substract", style: TextStyle(fontSize: 30))),
            ),

            SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: (){
                setState(() {
                  result = first * second;
                });
              },
                  child: Text("Multiply", style: TextStyle(fontSize: 30))),
            ),

            SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: (){
                setState(() {
                  result = first ~/ second;
                });
              },
                  child: Text("Divide", style: TextStyle(fontSize: 30))),
            ),

            Text("The result is: $result", style: TextStyle(fontSize: 20),)
          ],
        ),
      )
    );
  }
}


// Column lai alt + enter garyera wrap with padding garne.
// TextField is so that user can write something, while text is where you see text but cannot write.
// SizedBox will create space.
// ElevatedButton is to make button, ElevatedButton ma alt + enter garyera wrap with sizedbox click garne, then width lekhe
// ElevatedButton ma sizedbox is kept to control the button size, width: double.infinity makes the button stretch to full width of the screen(button becomes a full-width button).
// Text Style is for styling.
// onChanged is called whenever the text inside the field changes.
// setState() updates the UI while the app is running, without restarting or saving the whole app.
//  onPressed is a function.

// Column() bhitra children[].
// children bhitra TextField, ElevatedButton, SizedBox haru hunxa.
// TextField bhitra onChanged xa, and decoration xa and decoration ma labelText, hintText, and border xa.
// ElevatedButton ma onPressed and child hunxa, onPressed ma setState() xa and child ma text and its style.

// TextField contains:
// 1. labelText: Displays a label above the TextField when it’s not focused.
// 2. hintText: Provides a placeholder text inside the TextField when it’s empty.
// 3. border: Defines the border style around the TextField.

// To change from StatelessWidget to StatefulWidget press alt + enter, same for vice versa.
// StatelessWidget has one class when we do stless, StatefulWidget has 2 class made when we do stful.