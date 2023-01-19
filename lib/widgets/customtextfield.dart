import 'package:flutter/material.dart';
import 'package:ujjwal_infotech_app/utils/constants.dart';

class CustomTextField extends StatefulWidget {
  final String hintText;
  final String? labelText;
  final String icon;
  final bool? obscureText;
  final TextEditingController? controller;
  final String? obscureCharacter;
  const CustomTextField({
    super.key,
    required this.hintText,
    this.labelText,
    this.obscureText,
    required this.icon,
    this.controller,
    this.obscureCharacter,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool hidePassword = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height(context) * 0.085,
      padding: EdgeInsets.only(left: 20),
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
                verticalDivider(1, 40),
              ],
            ),
          ),
          addHorizontalySpace(15),
          Container(
            width: width(context) * .66,
            height: 50,
            child: TextFormField(
              style: bodyText18w600(color: appColor),
              controller: widget.controller,
              obscureText: widget.obscureText ?? false,
              obscuringCharacter: widget.obscureText == true
                  ? "${widget.obscureCharacter}"
                  : "*",
              decoration: InputDecoration(
                  suffixIcon:
                      widget.obscureText != null && widget.obscureText == true
                          ? IconButton(
                              onPressed: () {
                                setState(() {
                                  hidePassword == true
                                      ? hidePassword = false
                                      : hidePassword = true;
                                });
                              },
                              icon: hidePassword
                                  ? Icon(
                                      Icons.remove_red_eye,
                                      color: appColor,
                                    )
                                  : Icon(
                                      Icons.remove_red_eye_outlined,
                                      color: appColor,
                                    ))
                          : null,
                  hintText: widget.hintText,
                  label: Text(widget.labelText!),
                  alignLabelWithHint: true,
                  isDense: true,
                  hintStyle: bodyText18w600(color: appColor),
                  labelStyle: bodyText14w400(color: gray),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  border: InputBorder.none),
            ),
            // child: Column(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: [
            //     Text(
            //       widget.hint,
            //       style: bodyText14w400(color: gray),
            //     ),
            //     Container(
            //         height: 30,
            //         child: Center(
            //             child: TextFormField(
            //           obscureText: hidePassword ? widget.hide : hidePassword,
            //           obscuringCharacter:
            //               widget.hide ? "${widget.obscureCharacter}" : "*",
            //           style: bodyText18w600(color: appColor),
            //           cursorColor: appColor,
            //           decoration: InputDecoration(
            //               suffix: widget.hide
            //                   ? InkWell(
            //                       onTap: () {
            //                         setState(() {
            //                           hidePassword == true
            //                               ? hidePassword = false
            //                               : hidePassword = true;
            //                         });
            //                       },
            //                       child: hidePassword
            //                           ? Icon(
            //                               Icons.remove_red_eye,
            //                               color: appColor,
            //                             )
            //                           : Icon(
            //                               Icons.remove_red_eye_outlined,
            //                               color: appColor,
            //                             ))
            //                   : null,
            //               border: InputBorder.none),
            //         ))),
            //   ],
            // ),
          )
        ],
      ),
    );
  }
}
