import 'package:flutter/material.dart';
import 'package:ujjwal_infotech_app/utils/constants.dart';

class textField extends StatelessWidget {
  final String labelText;
  final String hintText;

  final TextEditingController? controller;
  final TextInputType? textInputType;
  final bool? obscureText;

  const textField({
    Key? key,
    required this.labelText,
    required this.hintText,
    this.controller,
    this.textInputType,
    this.obscureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height(context) * 0.09,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      margin: EdgeInsets.symmetric(vertical: 6),
      decoration: shadowDecoration(25, 2),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: TextFormField(
          style: bodyText18w600(color: appColor),
          controller: controller,
          obscureText: obscureText ?? false,
          decoration: InputDecoration(
              suffix: obscureText != null && obscureText == true
                  ? IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.remove_red_eye_rounded,
                        color: appColor,
                      ))
                  : SizedBox(),
              hintText: hintText,
              label: Text(labelText),
              alignLabelWithHint: true,
              isDense: true,
              hintStyle: bodyText18w600(color: appColor),
              labelStyle: bodyText14w400(color: gray),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              border: InputBorder.none),
        ),
      ),
    );
  }
}
