import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clon TikTok',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Clon Tiktok'),
        ),
        body: Center(
          child: Container(
            child: Text('Hello Tiktok'),
          ),
        ),
      ),
    );
  }
}