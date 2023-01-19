import 'package:flutter/material.dart';

NextScreen(BuildContext context, Widget screen) {
  return Navigator.push(
      context, MaterialPageRoute(builder: (context) => screen));
}
