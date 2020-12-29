import 'package:flutter/material.dart';
import 'package:places/res/colors.dart';
import 'package:places/res/dimens.dart';
import 'package:places/res/strings.dart';
import 'package:places/ui/screen/sight_card.dart';

import '../../mocks.dart';

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
        toolbarHeight: Dimens.sightListScreenToolbarHeight,
        elevation: Dimens.elevation0,
        backgroundColor: Colors.transparent,
        brightness: Brightness.light,
        title: Container(
          height: Dimens.sightListScreenToolbarHeight,
          alignment: Alignment.bottomLeft,
          child: Text(
            Strings.sightListScreenTitle,
            overflow: TextOverflow.ellipsis,
            maxLines: Dimens.textMaxLines2,
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Color(AppColors.oxfordBlue),
              fontSize: Dimens.fontSize32,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(Dimens.padding16),
        child: Column(
          children: getSightCards(),
        ),
      ),
    );
  }

  List<Widget> getSightCards() =>
      mocks.map((sight) => SightCard(sight)).toList();
}
