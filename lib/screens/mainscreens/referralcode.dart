import 'package:flutter/material.dart';
import 'package:ujjwal_infotech_app/screens/auth/login.dart';
import 'package:ujjwal_infotech_app/utils/constants.dart';
import 'package:ujjwal_infotech_app/widgets/custombackground.dart';
import 'package:ujjwal_infotech_app/widgets/custombutton.dart';
import 'package:ujjwal_infotech_app/widgets/customtextfield.dart';
import 'package:ujjwal_infotech_app/widgets/nextscreen.dart';

class EnterReferralCodeScreen extends StatefulWidget {
  const EnterReferralCodeScreen({super.key});

  @override
  State<EnterReferralCodeScreen> createState() =>
      _EnterReferralCodeScreenState();
}

class _EnterReferralCodeScreenState extends State<EnterReferralCodeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomBackground(
          child: Container(
            height: height(context),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      addVerticalSpace(25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Enter Code",
                            style: bodyText26w600(color: appColor),
                          ),
                          IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(
                                Icons.close,
                                size: 35,
                              ))
                        ],
                      ),
                      addVerticalSpace(25),
                      CustomTextField(
                          hint: "Enter referral code",
                          icon: "assets/key.png",
                          obscureCharacter: "x",
                          hide: true),
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                          onTap: () {
                            NextScreen(
                                context,
                                LogIn(
                                  referralCode: true,
                                ));
                          },
                          child: CustomButton(text: "Proceed", height: 53)),
                      addVerticalSpace(35)
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
