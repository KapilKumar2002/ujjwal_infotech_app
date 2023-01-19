import 'package:flutter/material.dart';

Color titleColor = Color(0xFFD9C300);
Color darkGray = Color(0xFF7E7E7E);
Color gray = Color(0xFFB3B3B3);
Color appColor = Color(0xFF2983BC);
Color darkIndigo = Color(0xFF095892);
Color black = Color(0xFF000000);

Color white = Color(0xFFFFFFFF);

double height(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

double width(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

TextStyle bodyText24w600({
  required Color color,
}) {
  return TextStyle(color: color, fontSize: 24, fontWeight: FontWeight.w600);
}

TextStyle bodyText24w400({
  required Color color,
}) {
  return TextStyle(color: color, fontSize: 24, fontWeight: FontWeight.w400);
}

TextStyle bodyText16w400({
  required Color color,
}) {
  return TextStyle(color: color, fontSize: 16, fontWeight: FontWeight.w400);
}

TextStyle bodyText20w400({
  required Color color,
}) {
  return TextStyle(color: color, fontSize: 20, fontWeight: FontWeight.w400);
}

TextStyle bodyText26w600({
  required Color color,
}) {
  return TextStyle(color: color, fontSize: 26, fontWeight: FontWeight.w600);
}

TextStyle bodyText18w600({
  required Color color,
}) {
  return TextStyle(color: color, fontSize: 18, fontWeight: FontWeight.w600);
}

TextStyle bodyText20w600({
  required Color color,
}) {
  return TextStyle(color: color, fontSize: 20, fontWeight: FontWeight.w600);
}

TextStyle bodyText22w600({
  required Color color,
}) {
  return TextStyle(color: color, fontSize: 22, fontWeight: FontWeight.w600);
}

TextStyle bodyText12w600({
  required Color color,
}) {
  return TextStyle(color: color, fontSize: 12, fontWeight: FontWeight.w600);
}

TextStyle bodyText16w600({
  required Color color,
}) {
  return TextStyle(color: color, fontSize: 16, fontWeight: FontWeight.w600);
}

TextStyle bodyText12w600underlined({
  required Color color,
}) {
  return TextStyle(
      color: color,
      fontSize: 12,
      fontWeight: FontWeight.w600,
      decoration: TextDecoration.underline,
      decorationThickness: 2.0);
}

TextStyle bodyText14w400({
  required Color color,
}) {
  return TextStyle(color: color, fontSize: 14, fontWeight: FontWeight.w400);
}

TextStyle bodyText14w600({
  required Color color,
}) {
  return TextStyle(color: color, fontSize: 14, fontWeight: FontWeight.w600);
}

TextStyle bodyText18w400({
  required Color color,
}) {
  return TextStyle(color: color, fontSize: 18, fontWeight: FontWeight.w400);
}

TextStyle bodyText16Bold({
  required Color color,
}) {
  return TextStyle(color: color, fontSize: 16, fontWeight: FontWeight.bold);
}

TextStyle bodyText14Bold({
  required Color color,
}) {
  return TextStyle(color: color, fontSize: 14, fontWeight: FontWeight.bold);
}

TextStyle bodyText12normal({
  required Color color,
}) {
  return TextStyle(color: color, fontSize: 12);
}

TextStyle bodyText15normal({
  required Color color,
}) {
  return TextStyle(color: color, fontSize: 15);
}

TextStyle bodyText14normal({
  required Color color,
}) {
  return TextStyle(color: color, fontSize: 14);
}

TextStyle bodyText14underlined({
  required Color color,
}) {
  return TextStyle(
      color: color,
      fontSize: 14,
      decoration: TextDecoration.underline,
      decorationThickness: 1.5);
}

Widget addVerticalSpace(double height) {
  return SizedBox(height: height);
}

Widget addHorizontalySpace(double width) {
  return SizedBox(width: width);
}

Widget verticalDivider(double width, double height) {
  return Container(
    height: height,
    width: width,
    color: gray,
  );
}

BoxDecoration shadowDecoration(double radius, double blur) {
  return BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(radius)),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: gray,
          blurRadius: blur,
        ),
      ]);
}
