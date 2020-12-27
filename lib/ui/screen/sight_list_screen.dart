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
          child: Text(
            SIGHT_LIST_SCREEN_TITLE,
            overflow: TextOverflow.ellipsis,
            maxLines: TEXT_MAX_LINES_2,
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Color(OXFORD_BLUE),
              fontSize: FONT_SIZE_32,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
