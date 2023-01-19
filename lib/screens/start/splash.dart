import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ujjwal_infotech_app/screens/auth/signup.dart';
import 'package:ujjwal_infotech_app/utils/constants.dart';
import 'package:ujjwal_infotech_app/widgets/custombackground.dart';

class SpalshScreen extends StatefulWidget {
  const SpalshScreen({super.key});

  @override
  State<SpalshScreen> createState() => _SpalshScreenState();
}

class _SpalshScreenState extends State<SpalshScreen> {
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   Timer(
  //       Duration(seconds: 4),
  //       () => Navigator.push(
  //           context, MaterialPageRoute(builder: (context) => SignUp())));
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomBackground(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  "assets/flag.png",
                  width: 120,
                ),
                // Container(
                //   child: Column(
                //     children: [
                //       Image.asset(
                //         "assets/logo.png",
                //         fit: BoxFit.fill,
                //       ),
                //       addVerticalSpace(15),
                //       Text(
                //         "Ujjwal legal associatess",
                //         style: bodyText24w600(color: titleColor),
                //       )
                //     ],
                //   ),
                // ),
                Image.asset("assets/logo.png"),

                Text(
                  "Version 2.3",
                  style: bodyText14normal(color: darkGray),
                ),
              ]),
        ),
      ),
    );
  }
}
