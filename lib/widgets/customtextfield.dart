import 'package:flutter/material.dart';
import 'package:ujjwal_infotech_app/utils/constants.dart';

class CustomTextField extends StatefulWidget {
  final String hint;
  final String icon;
  final bool hide;
  final TextEditingController? controller;
  final String? obscureCharacter;
  const CustomTextField(
      {super.key,
      required this.hint,
      required this.icon,
      this.controller,
      this.obscureCharacter,
      required this.hide});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool hidePassword = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 74,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: shadowDecoration(25, 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: width(context) * .13,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(widget.icon),
                addHorizontalySpace(15),
                verticalDivider(1, 50),
              ],
            ),
          ),
          addHorizontalySpace(15),
          Container(
            width: width(context) * .6,
            height: 50,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.hint,
                  style: bodyText14w400(color: gray),
                ),
                Container(
                    height: 30,
                    child: Center(
                        child: TextFormField(
                      obscureText: hidePassword ? widget.hide : hidePassword,
                      obscuringCharacter:
                          widget.hide ? "${widget.obscureCharacter}" : "*",
                      style: bodyText18w600(color: appColor),
                      cursorColor: appColor,
                      decoration: InputDecoration(
                          suffix: widget.hide
                              ? InkWell(
                                  onTap: () {
                                    setState(() {
                                      hidePassword == true
                                          ? hidePassword = false
                                          : hidePassword = true;
                                    });
                                  },
                                  child: hidePassword
                                      ? Icon(
                                          Icons.remove_red_eye,
                                          color: appColor,
                                        )
                                      : Icon(
                                          Icons.remove_red_eye_outlined,
                                          color: appColor,
                                        ))
                              : null,
                          border: InputBorder.none),
                    ))),
              ],
            ),
          )
        ],
      ),
    );
  }
}
