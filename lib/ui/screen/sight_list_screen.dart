import 'package:flutter/material.dart';
import 'package:places/res/colors.dart';
import 'package:places/res/dimens.dart';
import 'package:places/res/strings.dart';

// Main screen of the application
class SightListScreen extends StatefulWidget {
  @override
  _SightListScreenState createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        toolbarHeight: SIGHT_LIST_SCREEN_TOOLBAR_HEIGHT,
        elevation: ELEVATION_0,
        backgroundColor: Colors.transparent,
        brightness: Brightness.light,
        title: Container(
          height: SIGHT_LIST_SCREEN_TOOLBAR_HEIGHT,
          alignment: Alignment.bottomLeft,
          child: RichText(
            maxLines: TEXT_MAX_LINES_2,
            text: TextSpan(
                style: TextStyle(
                  fontSize: FONT_SIZE_32,
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(
                      text: SIGHT_LIST_SCREEN_TITLE_FIRST_CHAR,
                      style: TextStyle(color: Color(FERN)),
                      children: [
                        TextSpan(
                            text: SIGHT_LIST_SCREEN_TITLE_FIRST_WORD,
                            style: TextStyle(color: Color(OXFORD_BLUE)))
                      ]),
                  TextSpan(
                      text: SIGHT_LIST_SCREEN_TITLE_SECOND_CHAR,
                      style: TextStyle(color: Color(CREAM_CAN)),
                      children: [
                        TextSpan(
                            text: SIGHT_LIST_SCREEN_TITLE_SECOND_WORD,
                            style: TextStyle(color: Color(OXFORD_BLUE)))
                      ])
                ]),
          ),
        ),
      ),
    );
  }
}
