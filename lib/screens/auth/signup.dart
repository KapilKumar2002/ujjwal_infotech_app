import 'package:flutter/material.dart';
import 'package:ujjwal_infotech_app/screens/auth/login.dart';
import 'package:ujjwal_infotech_app/screens/mainscreens/homescreen.dart';
import 'package:ujjwal_infotech_app/utils/constants.dart';
import 'package:ujjwal_infotech_app/widgets/custombackground.dart';
import 'package:ujjwal_infotech_app/widgets/custombutton.dart';
import 'package:ujjwal_infotech_app/widgets/customtextfield.dart';
import 'package:ujjwal_infotech_app/widgets/nextscreen.dart';
import 'package:ujjwal_infotech_app/widgets/selectcategorywidget.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomBackground(
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Signup",
                        style: bodyText26w600(color: appColor),
                      ),
                      InkWell(
                        onTap: () {
                          NextScreen(context, HomeScreen());
                        },
                        child: Icon(
                          Icons.close,
                          size: 35,
                        ),
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    CustomTextField(
                      hint: "Name",
                      icon: "assets/person.png",
                      hide: false,
                    ),
                    addVerticalSpace(15),
                    SelectCategoryWidget(
                        hint: "Select category", icon: "assets/briefcase.png"),
                    addVerticalSpace(15),
                    CustomTextField(
                      hint: "Mobile Number",
                      icon: "assets/phone.png",
                      hide: false,
                    ),
                    addVerticalSpace(15),
                    CustomTextField(
                      hint: "Email",
                      icon: "assets/mail.png",
                      hide: false,
                    ),
                    addVerticalSpace(15),
                    CustomTextField(
                      hint: "Password",
                      icon: "assets/key.png",
                      hide: true,
                      obscureCharacter: "*",
                    ),
                  ],
                ),
                addVerticalSpace(100),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => LogIn()));
                      },
                      child: CustomButton(
                        text: "Sign up",
                        height: 53,
                      ),
                    ),
                    addVerticalSpace(15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an Account?",
                          style: bodyText12normal(color: black),
                        ),
                        addHorizontalySpace(7),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LogIn()));
                          },
                          child: Text(
                            "Log In",
                            style: bodyText12w600underlined(
                                color: Color(0xff095892)),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                addVerticalSpace(30)
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
