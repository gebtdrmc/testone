import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color black90001 = fromHex('#050709');

  static Color gray400 = fromHex('#c3c3c3');

  static Color black900 = fromHex('#010101');

  static Color blueGray400 = fromHex('#838798');

  static Color gray8001e = fromHex('#1e49454f');

  static Color deepPurpleA100 = fromHex('#9f83f7');

  static Color whiteA700 = fromHex('#ffffff');

  static Color green500 = fromHex('#3ed356');

  static Color gray100 = fromHex('#f5f5f5');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
