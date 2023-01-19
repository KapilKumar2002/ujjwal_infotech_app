import 'package:flutter/material.dart';
import 'package:ujjwal_infotech_app/utils/constants.dart';
import 'package:ujjwal_infotech_app/widgets/custombutton.dart';
import 'package:ujjwal_infotech_app/widgets/customtextfield.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: height(context),
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      addVerticalSpace(35),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Reset password",
                              style: bodyText26w600(color: appColor),
                            ),
                            Icon(
                              Icons.close,
                              size: 35,
                            )
                          ],
                        ),
                      ),
                      CustomTextField(
                        hint: "Enter new Password",
                        icon: "assets/key.png",
                        hide: true,
                      ),
                      addVerticalSpace(15),
                      CustomTextField(
                        hint: "Confirm Password",
                        icon: "assets/key.png",
                        hide: true,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      CustomButton(
                        text: "Reset",
                        height: 53,
                      ),
                      addVerticalSpace(25),
                    ],
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
