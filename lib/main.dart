import 'package:flutter/material.dart';
import 'package:places/res/strings.dart';
import 'package:places/ui/screen/sight_list_screen.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.appName,
      theme: ThemeData(fontFamily: "Roboto"),
      home: SightListScreen(),
    );
  }
}
