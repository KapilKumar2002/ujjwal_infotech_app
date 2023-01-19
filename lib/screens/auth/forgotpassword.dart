import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ujjwal_infotech_app/screens/auth/resetsuccess.dart';
import 'package:ujjwal_infotech_app/screens/auth/verifycode.dart';
import 'package:ujjwal_infotech_app/utils/constants.dart';
import 'package:ujjwal_infotech_app/widgets/custombackground.dart';
import 'package:ujjwal_infotech_app/widgets/custombutton.dart';
import 'package:ujjwal_infotech_app/widgets/customtextfield.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomBackground(
          child: SingleChildScrollView(
            child: Container(
              height: height(context) - 40,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20, bottom: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Forgot password",
                                style: bodyText26w600(color: appColor),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Icon(
                                  Icons.close,
                                  size: 35,
                                ),
                              )
                            ],
                          ),
                        ),
                        Text(
                          "A verification code will be sent to the\nregistered mobile number",
                          style: bodyText14w600(color: black),
                        ),
                        addVerticalSpace(60),
                        CustomTextField(
                          hintText: "+91 88888 88888",
                          labelText: "Mobile Number",
                          icon: "assets/phone.png",
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          CodeVerificationScreen()));
                            },
                            child: CustomButton(
                              text: "Next",
                              height: 53,
                            )),
                        addVerticalSpace(25),
                      ],
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
