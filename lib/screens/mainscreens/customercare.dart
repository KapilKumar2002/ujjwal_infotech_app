import 'dart:io';

import 'package:flutter/material.dart';
import 'package:ujjwal_infotech_app/utils/constants.dart';
import 'package:ujjwal_infotech_app/widgets/custombackground.dart';

class CustomerCareScreen extends StatefulWidget {
  const CustomerCareScreen({super.key});

  @override
  State<CustomerCareScreen> createState() => _CustomerCareScreenState();
}

class _CustomerCareScreenState extends State<CustomerCareScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: CustomBackground(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              addVerticalSpace(15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  addHorizontalySpace(0),
                  Text(
                    "Customer Care",
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
              addVerticalSpace(50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/logo.png",
                    height: 120,
                    width: 120,
                  ),
                  Image.asset(
                    "assets/logo2.png",
                    height: 124,
                    width: 120,
                  ),
                ],
              ),
              addVerticalSpace(25),
              Text(
                "Ujjwal legal associates",
                style: bodyText24w600(color: titleColor),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  "&",
                  style: bodyText20w600(color: gray),
                ),
              ),
              Text(
                "Ujjwal Infotech",
                style: TextStyle(
                    fontSize: 32, fontWeight: FontWeight.w600, color: appColor),
              ),
              addVerticalSpace(40),
              Text(
                "Website",
                style: bodyText14normal(color: black),
              ),
              addVerticalSpace(5),
              Text(
                "www.ujjwalgroup.net",
                style: bodyText14underlined(color: appColor),
              ),
              addVerticalSpace(35),
              Text(
                "Mail ID",
                style: bodyText14normal(color: black),
              ),
              addVerticalSpace(15),
              Text(
                "infotech@ujjwalgroup.net",
                style: bodyText14underlined(color: appColor),
              ),
              addVerticalSpace(15),
              Text(
                "ujjawalinfotech19@gmail.com",
                style: bodyText14underlined(color: appColor),
              ),
              addVerticalSpace(15),
              Text(
                "legal@ujjwalgroup.net",
                style: bodyText14underlined(color: appColor),
              ),
              addVerticalSpace(15),
              Text(
                "ujjwallegalassociates@gmail.com",
                style: bodyText14underlined(color: appColor),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
