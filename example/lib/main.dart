import 'package:flutter/material.dart';

import 'package:s_container/s_container.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Example'),
        ),
        body: Center(
          child: SContainer(
            child: SContainer(
              child: Container(
                color: Colors.black26,
                child: Text("center_center"),
              ),
              left: Container(
                color: Colors.blue,
                child: Text("center_left"),
              ),
              left_space: 40,
              bottom: Container(
                color: Colors.red,
                child: Text("center_bottom"),
              ),
              bottom_space: 20,
            ),
            child_alignment: Alignment.center,
            width: 700,
            height: 1100,
            x_space: 100,
            y_space: 100,
            right_space: 300,
            top: Container(
              color: Colors.red,
              child: Text("top"),
            ),
            bottom: Container(
              color: Colors.red,
              child: Text("bottom"),
            ),
            left: Container(
              color: Colors.blue,
              child: Text("left"),
            ),
            right: Container(
              color: Colors.blue,
              child: Text("right"),
            ),
          ),
        ),
      ),
    );
  }
}
