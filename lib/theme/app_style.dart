import 'package:flutter/material.dart';
import 'package:geok_en_s_application7/core/app_export.dart';

class AppStyle {
  static TextStyle txtInterRegular10WhiteA700 = TextStyle(
    color: ColorConstant.whiteA700,
    fontSize: getFontSize(
      10,
    ),
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
  );

  static TextStyle txtInterRegular10 = TextStyle(
    color: ColorConstant.blueGray400,
    fontSize: getFontSize(
      10,
    ),
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
  );

  static TextStyle txtInterSemiBold14 = TextStyle(
    color: ColorConstant.black900,
    fontSize: getFontSize(
      14,
    ),
    fontFamily: 'Inter',
    fontWeight: FontWeight.w600,
  );

  static TextStyle txtInterBold14 = TextStyle(
    color: ColorConstant.deepPurpleA100,
    fontSize: getFontSize(
      14,
    ),
    fontFamily: 'Inter',
    fontWeight: FontWeight.w700,
  );

  static TextStyle txtInterBold14Black900 = TextStyle(
    color: ColorConstant.black900,
    fontSize: getFontSize(
      14,
    ),
    fontFamily: 'Inter',
    fontWeight: FontWeight.w700,
  );

  static TextStyle txtInterMedium14 = TextStyle(
    color: ColorConstant.blueGray400,
    fontSize: getFontSize(
      14,
    ),
    fontFamily: 'Inter',
    fontWeight: FontWeight.w500,
  );
}
