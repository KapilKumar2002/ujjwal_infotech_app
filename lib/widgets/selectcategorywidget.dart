import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ujjwal_infotech_app/utils/constants.dart';

class SelectCategoryWidget extends StatefulWidget {
  final String hint;
  final String icon;
  final TextEditingController? controller;
  const SelectCategoryWidget({
    super.key,
    required this.hint,
    required this.icon,
    this.controller,
  });

  @override
  State<SelectCategoryWidget> createState() => _SelectCategoryWidgetState();
}

class _SelectCategoryWidgetState extends State<SelectCategoryWidget> {
  bool isDown = true;
  String? cat;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width(context),
      height: isDown ? height(context) * 0.085 : 255,
      decoration: shadowDecoration(25, 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            height: height(context) * 0.085,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: width(context) * .13,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(widget.icon),
                      addHorizontalySpace(15),
                      verticalDivider(1, 40),
                    ],
                  ),
                ),
                addHorizontalySpace(15),
                Container(
                  width: width(context) * .63,
                  height: 50,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      addVerticalSpace(7),
                      Text(
                        widget.hint,
                        style: bodyText11w400(color: gray),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            isDown ? isDown = false : isDown = true;
                          });
                        },
                        child: Container(
                            height: 30,
                            child: Center(
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "${cat}",
                                      style: bodyText18w600(color: appColor),
                                    ),
                                    isDown
                                        ? Image.asset("assets/chevron_down.png")
                                        : Image.asset("assets/chevron_up.png")
                                  ]),
                            )),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          !isDown
              ? Container(
                  margin: EdgeInsets.only(right: 4),
                  width: width(context) * .7,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Individual",
                            style: bodyText18w600(color: black),
                          ),
                          Radio(
                              value: "Individual",
                              groupValue: cat,
                              onChanged: (value) {
                                setState(() {
                                  cat = value;
                                });
                              })
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Lawyer",
                            style: bodyText18w600(color: black),
                          ),
                          Radio(
                              value: "Lawyer",
                              groupValue: cat,
                              onChanged: (value) {
                                setState(() {
                                  cat = value;
                                });
                              })
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Builder",
                            style: bodyText18w600(color: black),
                          ),
                          Radio(
                              value: "Builder",
                              groupValue: cat,
                              onChanged: (value) {
                                setState(() {
                                  cat = value;
                                });
                              })
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Agent",
                            style: bodyText18w600(color: black),
                          ),
                          Radio(
                              value: "Agent",
                              groupValue: cat,
                              onChanged: (value) {
                                setState(() {
                                  cat = value;
                                });
                              })
                        ],
                      ),
                    ],
                  ),
                )
              : addVerticalSpace(0),
        ],
      ),
    );
  }
}
