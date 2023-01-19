import 'package:flutter/material.dart';
import 'package:ujjwal_infotech_app/utils/constants.dart';

class CustomSearchButton extends StatefulWidget {
  const CustomSearchButton({super.key});

  @override
  State<CustomSearchButton> createState() => _CustomSearchButtonState();
}

class _CustomSearchButtonState extends State<CustomSearchButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: width(context),
      decoration: shadowDecoration(15, 2),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Search",
              style: bodyText15normal(color: gray),
            ),
            Image.asset("assets/search.png")
          ],
        ),
      ),
    );
  }
}
