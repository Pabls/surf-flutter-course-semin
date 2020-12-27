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
      title: APP_NAME,
      theme: ThemeData(fontFamily: ROBOTO_FONT_STYLE_NAME),
      home: SightListScreen(),
    );
  }
}
