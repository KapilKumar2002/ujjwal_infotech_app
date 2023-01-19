import 'package:flutter/material.dart';
import 'package:ujjwal_infotech_app/screens/mainscreens/customercare.dart';
import 'package:ujjwal_infotech_app/screens/myprofile/createprofile.dart';
import 'package:ujjwal_infotech_app/screens/mainscreens/myreferralcode.dart';
import 'package:ujjwal_infotech_app/screens/mainscreens/subscription.dart';
import 'package:ujjwal_infotech_app/utils/constants.dart';
import 'package:ujjwal_infotech_app/widgets/custombackground.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: CustomBackground(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                addVerticalSpace(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Hi, Anakin",
                      style: bodyText16w600(color: black),
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
                addVerticalSpace(50),
                Container(
                  height: 200,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CreateProfile()));
                          },
                          child: Text(
                            "My Profile",
                            style: bodyText18w400(color: black),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        CustomerCareScreen()));
                          },
                          child: Text(
                            "Customer Care",
                            style: bodyText18w400(color: black),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        MyReferralCodeScreen()));
                          },
                          child: Text(
                            "My referral code",
                            style: bodyText18w400(color: black),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        SubscriptionScreen()));
                          },
                          child: Text(
                            "Subscriptions",
                            style: bodyText18w400(color: black),
                          ),
                        ),
                        Text(
                          "Logout",
                          style: bodyText18w400(color: black),
                        ),
                      ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
