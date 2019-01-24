import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  List<String> list;

  FirstPage(this.list);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FirstPage"),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                "Flutter supports: " + widget.list.toString(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
