import 'package:flutter/material.dart';

showMySnackBar({
  required BuildContext context,
  required String message,
  Color? color,
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
        content: Text(message),
        backgroundColor: color ?? Colors.green,
        duration: Duration(seconds: 1),
        behavior: SnackBarBehavior.floating,
    )
  );
}

// small rectangle thing popping up at the bottom” is the SnackBar.
// showMySnackBar() is just a helper function that triggers it.
// BuildContext = a reference to the location of a widget in the widget tree.