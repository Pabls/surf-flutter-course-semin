import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/res/colors.dart';
import 'package:places/res/dimens.dart';
import 'package:places/res/strings.dart';
import 'package:places/res/styles.dart';

/// sight details screen
class SightDetails extends StatelessWidget {
  final Sight _sight;

  SightDetails(this._sight);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _SightDetailsHeader(),
            _SightDetailsBody(_sight),
          ],
        ),
      ),
    );
  }
}

class _SightDetailsHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: Dimens.sightDetailsImageGalleryHeight,
          color: Colors.green,
        ),
        _BackButton()
      ],
    );
  }
}

class _BackButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: Dimens.margin16, top: Dimens.margin32),
      width: Dimens.sightDetailsBackButtonSize,
      height: Dimens.sightDetailsBackButtonSize,
      child: FlatButton(
        color: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
                Dimens.sightDetailsBackButtonCornerRadius)),
        onPressed: () => {},
        padding: EdgeInsets.all(Dimens.padding0),
        child: Icon(Icons.chevron_left),
      ),
    );
  }
}

class _SightDetailsBody extends StatelessWidget {
  final Sight _sight;

  _SightDetailsBody(this._sight);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        vertical: Dimens.padding24,
        horizontal: Dimens.padding16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            _sight.name,
            overflow: TextOverflow.ellipsis,
            style: Styles.title,
          ),
          _SightInfoBlock(
            type: _sight.type,
          ),
          Container(
            margin: EdgeInsets.only(top: Dimens.margin24),
            child: Text(
              _sight.details,
              style: Styles.smallDark,
            ),
          ),
          _RouteButton(),
          _Divider(),
          _ActionButtonsBlock(),
        ],
      ),
    );
  }
}

class _SightInfoBlock extends StatelessWidget {
  final String type;

  _SightInfoBlock({@required this.type});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: Dimens.margin2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            type,
            overflow: TextOverflow.ellipsis,
            style: Styles.smallBoldDark,
          ),
          Padding(
            padding: EdgeInsets.only(left: Dimens.padding16),
            child: Text(
              Strings.sightDetailsWorkTimeLabel,
              overflow: TextOverflow.ellipsis,
              style: Styles.smallLight,
            ),
          ),
        ],
      ),
    );
  }
}

class _RouteButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: Dimens.margin24),
        child: FlatButton.icon(
            icon: Icon(
              Icons.redo_outlined,
              color: Colors.white,
            ),
            label: Text(
              Strings.sightDetailsRouteButtonText,
              style: Styles.smallBoldLight,
            ),
            height: Dimens.sightDetailsRouteButtonHeight,
            minWidth: double.infinity,
            onPressed: () => {},
            color: Color(AppColors.fruitSalad),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                    Dimens.sightDetailsRouteButtonCornerRadius))));
  }
}

class _Divider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: Dimens.margin24),
      child: Divider(
        color: Color(AppColors.waterlooLight),
      ),
    );
  }
}

class _ActionButtonsBlock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: Dimens.margin8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: _PlanButton(),
          ),
          Expanded(
            child: _AddToFavoriteButton(),
          ),
        ],
      ),
    );
  }
}

class _PlanButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton.icon(
      onPressed: () => {},
      height: Dimens.sightDetailsActionButtonHeight,
      color: Colors.transparent,
      icon: Icon(
        Icons.calendar_today_outlined,
        color: Color(AppColors.waterlooLight),
      ),
      label: Text(
        Strings.sightDetailsPlanButtonText,
        style: Styles.smallUltraLight,
      ),
    );
  }
}

class _AddToFavoriteButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton.icon(
      onPressed: () => {},
      height: Dimens.sightDetailsActionButtonHeight,
      color: Colors.transparent,
      icon: Icon(
        Icons.favorite,
        color: Color(AppColors.oxfordBlue),
      ),
      label: Text(
        Strings.sightDetailsAddToFavoritesButtonText,
        style: Styles.smallDark,
      ),
    );
  }
}
