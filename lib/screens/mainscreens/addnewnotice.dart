import 'package:flutter/material.dart';
import 'package:ujjwal_infotech_app/utils/constants.dart';
import 'package:ujjwal_infotech_app/widgets/custombackground.dart';
import 'package:ujjwal_infotech_app/widgets/custombutton.dart';
import 'package:ujjwal_infotech_app/widgets/customdrawer.dart';
import 'package:ujjwal_infotech_app/widgets/customsearchbox.dart';
import 'package:ujjwal_infotech_app/widgets/customtextfield.dart';
import 'package:ujjwal_infotech_app/widgets/noticetextfield.dart';
import 'package:ujjwal_infotech_app/widgets/publicnoticedetaildata.dart';

class AddNewNoticeScreen extends StatefulWidget {
  const AddNewNoticeScreen({super.key});

  @override
  State<AddNewNoticeScreen> createState() => _AddNewNoticeScreenState();
}

class _AddNewNoticeScreenState extends State<AddNewNoticeScreen> {
  bool _isSubmitted = false;
  TextEditingController controller = TextEditingController();
  GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      key: _globalKey,
      body: SafeArea(
          child: CustomBackground(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                addVerticalSpace(25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        onTap: () {
                          _globalKey.currentState!.openDrawer();
                        },
                        child: Image.asset("assets/menu.png")),
                    Text(
                      "Public Notice detail",
                      style: bodyText16w600(color: black),
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.close,
                          size: 35,
                        )),
                  ],
                ),
                addVerticalSpace(25),
                _isSubmitted
                    ? Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Text(
                          "Submitted successfully!",
                          style: bodyText14w400(color: black),
                        ),
                      )
                    : addVerticalSpace(0),
                NoticeTextField(hint: "Date"),
                addVerticalSpace(15),
                NoticeTextField(hint: "Newspaper"),
                addVerticalSpace(15),
                NoticeTextField(hint: "Type"),
                addVerticalSpace(15),
                NoticeTextField(hint: "Property"),
                addVerticalSpace(15),
                NoticeTextField(hint: "Village/City"),
                addVerticalSpace(15),
                NoticeTextField(hint: "Taluka"),
                addVerticalSpace(15),
                NoticeTextField(hint: "District"),
                addVerticalSpace(15),
                NoticeTextField(hint: "SR/Plot/Section"),
                addVerticalSpace(15),
                NoticeTextField(hint: "Area"),
                addVerticalSpace(15),
                NoticeTextField(hint: "Flat details"),
                addVerticalSpace(15),
                NoticeTextField(hint: "Advocate"),
                addVerticalSpace(15),
                NoticeTextField(hint: "Days"),
                addVerticalSpace(15),
                NoticeTextField(hint: "Lapse date"),
                addVerticalSpace(15),
                NoticeTextField(hint: "Query"),
                addVerticalSpace(20),
                _isSubmitted
                    ? addVerticalSpace(0)
                    : GestureDetector(
                        onTap: () {
                          setState(() {
                            _isSubmitted = true;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: CustomButton(text: "Submit", height: 53),
                        )),
                CustomSearchBox(
                  controller: controller,
                ),
                addVerticalSpace(20),
                controller.text.isEmpty
                    ? addVerticalSpace(0)
                    : Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Center(
                          child: Text(
                            "Your search result",
                            style: bodyText14w400(color: black),
                          ),
                        ),
                      ),
                PublicNoticeDetailData(),
                addVerticalSpace(20)
              ],
            ),
          ),
        ),
      )),
    );
  }
}
