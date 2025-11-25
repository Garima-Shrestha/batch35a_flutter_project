import 'package:flutter/material.dart';
import 'package:flutter_project/common/my_snackbar.dart';
import 'package:flutter_project/widgets/my_button.dart';
import 'package:flutter_project/widgets/my_text_form_field.dart';

class CustomScreen extends StatefulWidget {
  const CustomScreen({super.key});

  @override
  State<CustomScreen> createState() => _CustomScreenState();
}

class _CustomScreenState extends State<CustomScreen> {
  final TextEditingController firstController = TextEditingController();
  final TextEditingController secondController = TextEditingController();

  final _gap = SizedBox(height: 10);
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Custom Screen"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              MyTextFormField(
                labelText: "Enter first no",
                hintText: "Enter first no",
                controller: firstController,
                errorMessage: "Please enter first number",
              ),
              _gap,
              MyTextFormField(
                labelText: "Enter second no",
                hintText: "e.g 12",
                controller: secondController,
                errorMessage: "Please enter second number",
              ),
              _gap,

              MyButton(
                text: "Addition",
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    int firstNo = int.parse(firstController.text);
                    int secondNo = int.parse(secondController.text);
                    int sum = firstNo + secondNo;

                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(SnackBar(content: Text("Sum is $sum")));
                  }
                },
              ),
              _gap,

            MyButton(
                text: "Subtraction",
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    int firstNo = int.parse(firstController.text);
                    int secondNo = int.parse(secondController.text);
                    int difference = firstNo - secondNo;

                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Difference is $difference")),
                    );
                  }
                }
            )

              // MyButton(onPressed: () => showMySnackBar(context: context, message: "I am button 1"),
              //     text: "Button1"),
              // SizedBox(height: 12),
              // MyButton(onPressed: ()=> showMySnackBar(context: context, message: "I am button 2"),
              //     text: "Button2", color: Colors.green,)
            ],
          ),
        ),
      ),
    );
  }
}
