import 'package:flutter/material.dart';
import 'package:ujjwal_infotech_app/utils/constants.dart';
import 'package:ujjwal_infotech_app/widgets/custombackground.dart';
import 'package:ujjwal_infotech_app/widgets/customdrawer.dart';

class MyReferralCodeScreen extends StatefulWidget {
  const MyReferralCodeScreen({super.key});

  @override
  State<MyReferralCodeScreen> createState() => _MyReferralCodeScreenState();
}

class _MyReferralCodeScreenState extends State<MyReferralCodeScreen> {
  GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      drawer: CustomDrawer(),
      body: SafeArea(
        child: CustomBackground(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 25),
            width: width(context),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                          onTap: () {
                            _globalKey.currentState!.openDrawer();
                          },
                          child: Image.asset("assets/menu.png")),
                      Text(
                        "My Referral code",
                        style: bodyText16w600(color: black),
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
                ),
                Column(
                  children: [
                    Text(
                      "My Referral code",
                      style: bodyText16w400(color: black),
                    ),
                    addVerticalSpace(20),
                    Container(
                      width: 256,
                      height: 54,
                      child: Center(
                        child: TextFormField(
                          style: bodyText20w400(color: appColor),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 15),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide(color: black)),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: black),
                                borderRadius: BorderRadius.circular(50)),
                            suffix: Icon(
                              Icons.copy_rounded,
                              color: Color(0xFF1C1B1F),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "Share Via",
                      style: bodyText16w600(color: darkGray),
                    ),
                    addVerticalSpace(15),
                    Image.asset("assets/whatsapp.png"),
                    addVerticalSpace(60)
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
