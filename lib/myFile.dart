import 'package:flutter/material.dart';

class MyFileClass extends StatefulWidget {
  MyFileClass({Key key}) : super(key: key);

  @override
  _MyFileClassState createState() => _MyFileClassState();
}

int value = 0;

class _MyFileClassState extends State<MyFileClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Example app"),
      ),
      body: Center(
        child: Container(
          child: FlatButton(
            color: Colors.blue,
            onPressed: () {
              myFunction1();
            },
            child: Text("Click me"),
          ),
        ),
      ),
    );
  }
}

Future<void> myFunction1() async {
  print("Initial Value $value");
  value = await myFunction2();
  print("Updated Value $value");
}

Future<int> myFunction2() async {
  print("Begin");
  await Future.delayed(Duration(seconds: 5), () {
    value = 1;
  });
  print("End");
  return value;
}
