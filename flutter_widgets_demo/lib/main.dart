import 'package:flutter/material.dart';

void main() {
  runApp(const StateFulWidgetDemo());
}

class StateFulWidgetDemo extends StatefulWidget {
  const StateFulWidgetDemo({Key? key}) : super(key: key);

  @override
  State<StateFulWidgetDemo> createState() => _StateFulWidgetDemoState();
}

class _StateFulWidgetDemoState extends State<StateFulWidgetDemo> {
  double _fontSize = 20;

  void increaseSize() {
    setState(() {
      if (_fontSize <= 40) {
        _fontSize += 20;
      } else {
        _fontSize = 20;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Stateful widget demo"),
          //backgroundColor: Colors.cyanAccent,
        ),
        body: Center(
          child: TextButton(
            onPressed: increaseSize,
            child: Text(
              "Hello There",
              style: TextStyle(fontSize: _fontSize, color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
