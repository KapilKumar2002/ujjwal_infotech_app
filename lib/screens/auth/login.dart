import 'package:flutter/material.dart';
import 'package:ujjwal_infotech_app/screens/auth/forgotpassword.dart';
import 'package:ujjwal_infotech_app/screens/auth/signup.dart';
import 'package:ujjwal_infotech_app/screens/mainscreens/homescreen.dart';
import 'package:ujjwal_infotech_app/screens/mainscreens/referralcode.dart';
import 'package:ujjwal_infotech_app/utils/constants.dart';
import 'package:ujjwal_infotech_app/widgets/custombackground.dart';
import 'package:ujjwal_infotech_app/widgets/custombutton.dart';
import 'package:ujjwal_infotech_app/widgets/customtextfield.dart';
import 'package:ujjwal_infotech_app/widgets/nextscreen.dart';

class LogIn extends StatefulWidget {
  final bool? referralCode;
  const LogIn({super.key, this.referralCode});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomBackground(
          child: SingleChildScrollView(
            child: Container(
              height: height(context) - 40,
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Login",
                                style: bodyText26w600(color: appColor),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => HomeScreen()));
                                },
                                child: Icon(
                                  Icons.close,
                                  size: 35,
                                ),
                              )
                            ],
                          ),
                        ),
                        CustomTextField(
                          hintText: "+91 913 388 38 83",
                          labelText: "Mobile Number",
                          icon: "assets/phone.png",
                        ),
                        addVerticalSpace(15),
                        CustomTextField(
                          hintText: "********",
                          labelText: "Password",
                          icon: "assets/key.png",
                          obscureCharacter: "*",
                          obscureText: true,
                        ),
                        addVerticalSpace(8),
                        GestureDetector(
                          onTap: () {
                            NextScreen(context, ForgotPasswordScreen());
                          },
                          child: Text(
                            "Forgot Password?",
                            style: bodyText14w600(color: appColor),
                          ),
                        ),
                        addVerticalSpace(50),
                        widget.referralCode == true
                            ? addVerticalSpace(0)
                            : InkWell(
                                onTap: () {
                                  NextScreen(
                                      context, EnterReferralCodeScreen());
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Do you have any referral code?",
                                      style: bodyText12normal(color: black),
                                    ),
                                    addHorizontalySpace(7),
                                    Text(
                                      "Enter code",
                                      style: bodyText12w600underlined(
                                          color: Color(0xff095892)),
                                    )
                                  ],
                                ),
                              ),
                      ],
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            NextScreen(context, HomeScreen());
                          },
                          child: CustomButton(
                            text: "Login",
                            height: 53,
                          ),
                        ),
                        addVerticalSpace(15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don't have an Account?",
                              style: bodyText12normal(color: black),
                            ),
                            addHorizontalySpace(7),
                            InkWell(
                              onTap: () {
                                NextScreen(context, SignUp());
                              },
                              child: Text(
                                "Signup",
                                style: bodyText12w600underlined(
                                    color: Color(0xff095892)),
                              ),
                            )
                          ],
                        ),
                        addVerticalSpace(40)
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
