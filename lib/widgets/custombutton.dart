import 'package:flutter/material.dart';
import 'package:ujjwal_infotech_app/utils/constants.dart';

class CustomButton extends StatefulWidget {
  final double height;
  final String text;
  const CustomButton({super.key, required this.text, required this.height});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      child: Center(
          child: Text(
        widget.text,
        style: bodyText16Bold(color: Color(0xFF095892)),
      )),
      width: width(context),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: [Color(0xFFB7FFEE), Color(0xFF5BBEFF)],
          )),
    );
  }
}
