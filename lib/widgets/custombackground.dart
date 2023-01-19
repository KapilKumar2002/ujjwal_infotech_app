import 'package:flutter/material.dart';
import 'package:ujjwal_infotech_app/utils/constants.dart';

class CustomBackground extends StatelessWidget {
  final Widget child;

  const CustomBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height(context),
      width: width(context),
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/back.jpeg"), fit: BoxFit.fill)),
      child: child,
    );
  }
}
