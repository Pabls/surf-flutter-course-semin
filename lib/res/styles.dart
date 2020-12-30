import 'dart:ui';

import 'package:flutter/material.dart';

import 'colors.dart';
import 'dimens.dart';

class Styles {
  static const largeTitle = TextStyle(
    color: Color(AppColors.oxfordBlue),
    fontSize: Dimens.fontSize32,
    fontWeight: FontWeight.bold,
  );

  static const title = TextStyle(
    color: Color(AppColors.oxfordBlue),
    fontSize: Dimens.fontSize24,
    fontWeight: FontWeight.bold,
  );

  static const subtitle = TextStyle(
    color: Color(AppColors.oxfordBlue),
    fontSize: Dimens.fontSize18,
    fontWeight: FontWeight.w500,
  );

  static const text = TextStyle(
    color: Color(AppColors.oxfordBlue),
    fontSize: Dimens.fontSize16,
    fontWeight: FontWeight.w500,
  );

  static const smallBold = TextStyle(
    color: Colors.white,
    fontSize: Dimens.fontSize14,
    fontWeight: FontWeight.bold,
  );

  static const small = TextStyle(
    color: Color(AppColors.waterloo),
    fontSize: Dimens.fontSize14,
    fontWeight: FontWeight.w400,
  );

  static const superSmall = TextStyle(
    color: Color(AppColors.oxfordBlue),
    fontSize: Dimens.fontSize12,
    fontWeight: FontWeight.w400,
  );
}
