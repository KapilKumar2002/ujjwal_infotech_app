import 'package:flutter/material.dart';
import 'package:ujjwal_infotech_app/utils/constants.dart';

class NoticeTextField extends StatefulWidget {
  final String hint;
  const NoticeTextField({super.key, required this.hint});

  @override
  State<NoticeTextField> createState() => _NoticeTextFieldState();
}

class _NoticeTextFieldState extends State<NoticeTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 74,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: shadowDecoration(25, 2),
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
                style: bodyText18w600(color: appColor),
                cursorColor: appColor,
                decoration: InputDecoration(border: InputBorder.none),
              ))),
        ],
      ),
    );
  }
}
