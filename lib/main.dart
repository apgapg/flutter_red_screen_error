import 'package:flutter/material.dart';
import 'package:flutter_red_screen_error/home_page.dart';

GlobalKey<MyAppState> rootKey = new GlobalKey();

void main() => runApp(
      MyApp(key: rootKey),
    );

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  MyAppState createState() {
    return new MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  String _errorMessage;

  onError(String message) {
    if (mounted)
      setState(() {
        _errorMessage = message;
      });
  }

  @override
  Widget build(BuildContext context) {
    return _errorMessage != null
        ? ErrorWidget(_errorMessage)
        : MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.red,
            ),
            home: HomePage(),
          );
  }
}
