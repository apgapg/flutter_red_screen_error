import 'package:flutter/material.dart';
import 'package:flutter_red_screen_error/main.dart';
import 'package:flutter_red_screen_error/second_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> _list;

  @override
  void initState() {
    super.initState();
    _list = ["Flutter", "Android", "iOS"];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage"),
      ),
      body: Container(
        child: Center(
          child: RaisedButton(
            onPressed: _showSecondPage,
            child: Text("FIRST PAGE"),
          ),
        ),
      ),
    );
  }

  void _showSecondPage() {
   // _list=null;
    if (_list != null)
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => FirstPage(_list)));
    else
      rootKey.currentState.onError("List passed to first page is null!");
  }
}
