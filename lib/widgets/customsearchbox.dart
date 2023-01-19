import 'package:flutter/material.dart';
import 'package:ujjwal_infotech_app/utils/constants.dart';

class CustomSearchBox extends StatefulWidget {
  final TextEditingController? controller;
  const CustomSearchBox({super.key, this.controller});

  @override
  State<CustomSearchBox> createState() => _CustomSearchBoxState();
}

class _CustomSearchBoxState extends State<CustomSearchBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: shadowDecoration(15, 2),
      child: Center(
        child: TextFormField(
            controller: widget.controller,
            style: bodyText15normal(color: black),
            decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                border: InputBorder.none,
                hintText: "Search",
                hintStyle: bodyText15normal(color: gray),
                suffixIcon: ImageIcon(
                  AssetImage("assets/search.png"),
                  color: black,
                ))),
      ),
    );
  }
}
