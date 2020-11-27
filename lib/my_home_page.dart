import 'package:flutter/material.dart';



// ignore: must_be_immutable
class MyHomePage extends StatefulWidget {
  String title;
  MyHomePage({this.title});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title, style: TextStyle(color: Colors.grey.shade200),),
        backgroundColor: Colors.grey.shade900,


        ),
      body: Container(
        color: Colors.grey.shade800,

      ),

    );
  }
}
