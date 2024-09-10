import 'package:flutter/material.dart';
import 'package:flutter_design_pattern/util/size.dart';

class FontTitle {
  Color? fontColor;
  final String fontStyle;
  final BuildContext context;
  FontTitle({required this.fontStyle, this.fontColor, required this.context});

  TextStyle setStyle() {
    fontColor ??= Colors.black;
    return TextStyle(
        fontFamily: fontStyle,
        fontSize: Sizes.dp5(context),
        color: fontColor,
        fontWeight: FontWeight.w600);
  }
}

class FontDocsTitle {
  Color? fontColor;
  final String fontStyle;
  final BuildContext context;
  FontDocsTitle(
      {required this.fontStyle, this.fontColor, required this.context});

  TextStyle setStyle() {
    fontColor ??= Colors.black;
    return TextStyle(
        fontFamily: fontStyle, fontSize: Sizes.dp8(context), color: fontColor);
  }
}

class FontSubtitle {
  Color? fontColor;
  final String fontStyle;
  final BuildContext context;
  FontSubtitle(
      {required this.fontStyle, this.fontColor, required this.context});

  TextStyle setStyle() {
    fontColor ??= Colors.black;
    return TextStyle(
        fontFamily: fontStyle,
        fontSize: Sizes.dp3(context),
        color: fontColor,
        fontWeight: FontWeight.w500);
  }
}

class FontDocsSubtitle {
  Color? fontColor;
  final String fontStyle;
  final BuildContext context;
  FontDocsSubtitle(
      {required this.fontStyle, this.fontColor, required this.context});

  TextStyle setStyle() {
    fontColor ??= Colors.black;
    return TextStyle(
        fontFamily: fontStyle, fontSize: Sizes.dp3(context), color: fontColor);
  }
}

class FontParagraph {
  Color? fontColor;
  final String fontStyle;
  final BuildContext context;
  FontParagraph(
      {required this.fontStyle, this.fontColor, required this.context});

  TextStyle setStyle() {
    fontColor ??= Colors.black;
    return TextStyle(
        fontFamily: fontStyle, fontSize: Sizes.dp2(context), color: fontColor);
  }
}
