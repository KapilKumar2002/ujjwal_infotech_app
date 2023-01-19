import 'package:flutter/material.dart';
import 'package:ujjwal_infotech_app/utils/constants.dart';
import 'package:ujjwal_infotech_app/widgets/custombackground.dart';
import 'package:ujjwal_infotech_app/widgets/customdrawer.dart';

class SubscriptionScreen extends StatefulWidget {
  const SubscriptionScreen({super.key});

  @override
  State<SubscriptionScreen> createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen> {
  GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  String? plan;
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
                        "Subscription",
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
                addVerticalSpace(35),
                Text(
                  "Choose your plan",
                  style: bodyText22w600(color: black),
                ),
                addVerticalSpace(25),
                Container(
                  height: 92,
                  decoration: shadowDecoration(25, 2),
                  child: Center(
                    child: ListTile(
                      title: Text(
                        "Free Subscription",
                        style: bodyText18w600(color: black),
                      ),
                      subtitle: Text(
                        "Get 1 month free subscription",
                        style: bodyText14w400(color: gray),
                      ),
                      leading: Radio(
                          value: "Free",
                          groupValue: plan,
                          onChanged: (value) {
                            setState(() {
                              plan = value;
                            });
                          }),
                    ),
                  ),
                ),
                addVerticalSpace(20),
                Container(
                  height: 92,
                  decoration: shadowDecoration(25, 2),
                  child: Center(
                    child: ListTile(
                      title: Text(
                        "\u{20B9} 500/Month",
                        style: bodyText18w600(color: black),
                      ),
                      subtitle: Text(
                        "Monthly subscription",
                        style: bodyText14w400(color: gray),
                      ),
                      leading: Radio(
                          value: "500",
                          groupValue: plan,
                          onChanged: (value) {
                            setState(() {
                              plan = value;
                            });
                          }),
                    ),
                  ),
                ),
                addVerticalSpace(20),
                Stack(
                  children: [
                    Container(
                      height: 92,
                      decoration: shadowDecoration(25, 2),
                      child: Center(
                        child: ListTile(
                          title: Text(
                            "\u{20B9} 5000/Month",
                            style: bodyText18w600(color: black),
                          ),
                          subtitle: Text(
                            "Yearly subscription",
                            style: bodyText14w400(color: gray),
                          ),
                          leading: Radio(
                              value: "5000",
                              groupValue: plan,
                              onChanged: (value) {
                                setState(() {
                                  plan = value;
                                });
                              }),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional.topEnd,
                      child: Container(
                        width: 100,
                        height: 21,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(50),
                                topRight: Radius.circular(50)),
                            color: black),
                        child: Center(
                          child: Text(
                            "Best Deal",
                            style: bodyText12w600(color: white),
                          ),
                        ),
                      ),
                    )
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
