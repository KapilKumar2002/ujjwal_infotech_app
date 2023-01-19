import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:pinput/pinput.dart';
import 'package:ujjwal_infotech_app/utils/constants.dart';

class CodeVerificationScreen extends StatefulWidget {
  const CodeVerificationScreen({super.key});

  @override
  State<CodeVerificationScreen> createState() => _CodeVerificationScreenState();
}

class _CodeVerificationScreenState extends State<CodeVerificationScreen> {
  final GlobalKey<FormState> key = GlobalKey<FormState>();
  final TextEditingController _pinPutController = TextEditingController();
  final defaultPinTheme = PinTheme(
    width: 52,
    height: 56,
    textStyle: bodyText24w400(color: black),
    decoration: BoxDecoration(
        border: Border(
      bottom: BorderSide(width: 2),
    )),
  );
  String? otp;
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30, bottom: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Verification",
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
                        "Enter a 4 digit verification code sent to the\nregistered mobile number",
                        style: bodyText14w600(color: black),
                      ),
                      addVerticalSpace(50),
                      Center(
                        child: Text(
                          "Code expires in 01:59",
                          style: bodyText14w400(color: gray),
                        ),
                      ),
                      addVerticalSpace(40),
                      Center(
                        child: Pinput(
                          key: key,
                          validator: MultiValidator([
                            RequiredValidator(errorText: "Otp is not correct"),
                            MinLengthValidator(6,
                                errorText: "Please enter correct otp"),
                          ]),
                          length: 4,
                          defaultPinTheme: defaultPinTheme,
                          controller: _pinPutController,
                          pinAnimationType: PinAnimationType.fade,
                          onChanged: (value) {
                            setState(() {
                              otp = value;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
