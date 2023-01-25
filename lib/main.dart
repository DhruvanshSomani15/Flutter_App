import 'package:flutter/material.dart';
import './custom.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
        foregroundColor: Colors.orange,
      ),
      body: Center(
        child: CustomButton(
          text: 'welcome',
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}
