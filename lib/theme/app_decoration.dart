import 'package:flutter/material.dart';
import 'package:geok_en_s_application7/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get txtFillDeeppurpleA100 => BoxDecoration(
        color: ColorConstant.deepPurpleA100,
      );
  static BoxDecoration get outlineGray8001e => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border(
          bottom: BorderSide(
            color: ColorConstant.gray8001e,
            width: getHorizontalSize(
              1.00,
            ),
          ),
        ),
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
}

class BorderRadiusStyle {
  static BorderRadius circleBorder25 = BorderRadius.circular(
    getHorizontalSize(
      25.00,
    ),
  );

  static BorderRadius txtCircleBorder10 = BorderRadius.circular(
    getHorizontalSize(
      10.00,
    ),
  );
}
