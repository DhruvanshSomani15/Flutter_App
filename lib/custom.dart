import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  // final Function onPressed; (value
  final VoidCallback? onPressed;

  CustomButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("Welcome"),
              content: Text("Welcome Roman"),
              actions: <Widget>[
                TextButton(
                  child: Text("OK"),
                  onPressed: onPressed ?? () {},
                ),
                TextButton(
                  child: Text("Cancel"),
                  onPressed: onPressed ?? () {},
                ),
              ],
            );
          },
        );
      },
      child: Text("Click me"),
    );
  }
}
