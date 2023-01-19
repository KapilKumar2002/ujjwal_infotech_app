import 'package:flutter/material.dart';
import 'package:ujjwal_infotech_app/utils/constants.dart';
import 'package:ujjwal_infotech_app/widgets/custombutton.dart';

class ResetSuccessScreen extends StatefulWidget {
  const ResetSuccessScreen({super.key});

  @override
  State<ResetSuccessScreen> createState() => _ResetSuccessScreenState();
}

class _ResetSuccessScreenState extends State<ResetSuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          height: height(context),
          width: width(context),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 200),
                child: Column(
                  children: [
                    Image.asset("assets/verified.png"),
                    addVerticalSpace(5),
                    Text(
                      "Congratulations!",
                      style: bodyText20w600(color: black),
                    ),
                    addVerticalSpace(5),
                    Text(
                      "Password reset successfully!",
                      style: bodyText14w400(color: black),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: CustomButton(
                  text: "Next",
                  height: 53,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
