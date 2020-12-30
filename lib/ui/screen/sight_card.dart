import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/res/colors.dart';
import 'package:places/res/dimens.dart';
import 'package:places/res/styles.dart';

class SightCard extends StatelessWidget {
  final Sight _sight;

  SightCard(this._sight);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: Dimens.margin16),
      child: Column(
        children: [
          Container(
            height: Dimens.sightCardImageHeight,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.indigo,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Dimens.sightCardCornerRadius),
                topRight: Radius.circular(Dimens.sightCardCornerRadius),
              ),
            ),
            child: Padding(
                padding: EdgeInsets.all(Dimens.padding16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        _sight.type,
                        overflow: TextOverflow.ellipsis,
                        maxLines: Dimens.textMaxLines1,
                        style: Styles.smallBold,
                      ),
                    ),
                    Container(
                      width: Dimens.sightCardIconSize,
                      height: Dimens.sightCardIconSize,
                      color: Colors.greenAccent,
                    )
                  ],
                )),
          ),
          Container(
            height: Dimens.sightCardInfoSectionHeight,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(AppColors.wildSand),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(Dimens.sightCardCornerRadius),
                  bottomRight: Radius.circular(Dimens.sightCardCornerRadius)),
            ),
            child: Padding(
              padding: EdgeInsets.all(Dimens.padding16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: Dimens.margin2),
                    child: Text(
                      _sight.name,
                      overflow: TextOverflow.ellipsis,
                      maxLines: Dimens.textMaxLines2,
                      style: Styles.text,
                    ),
                  ),
                  Text(
                    _sight.details,
                    overflow: TextOverflow.ellipsis,
                    maxLines: Dimens.textMaxLines1,
                    style: Styles.small,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
