import 'package:flutter/material.dart';
import 'package:places/res/colors.dart';
import 'package:places/res/dimens.dart';
import 'package:places/res/strings.dart';

/// Main screen of the application
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
        toolbarHeight: sightListScreenToolbarHeight,
        elevation: elevation0,
        backgroundColor: Colors.transparent,
        brightness: Brightness.light,
        title: Container(
          height: sightListScreenToolbarHeight,
          alignment: Alignment.bottomLeft,
          child: Text(
            sightListScreenTitle,
            overflow: TextOverflow.ellipsis,
            maxLines: textMaxLines2,
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Color(oxfordBlue),
              fontSize: fontSize32,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
