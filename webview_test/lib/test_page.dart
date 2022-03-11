import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Webview Test"),),
      body: Container(
        color: Colors.redAccent,
        child: Center(
          child: Text("Hello World", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),),
        ),
      )
    );
  }
}
