import 'package:flutter/material.dart';
import 'package:ujjwal_infotech_app/screens/mainscreens/addnewnotice.dart';
import 'package:ujjwal_infotech_app/utils/constants.dart';
import 'package:ujjwal_infotech_app/widgets/custombackground.dart';
import 'package:ujjwal_infotech_app/widgets/custombutton.dart';
import 'package:ujjwal_infotech_app/widgets/customdrawer.dart';
import 'package:ujjwal_infotech_app/widgets/customsearchbox.dart';
import 'package:ujjwal_infotech_app/widgets/nextscreen.dart';
import 'package:ujjwal_infotech_app/widgets/publicnoticedetaildata.dart';

class PublicNoticeDetailScreen extends StatefulWidget {
  const PublicNoticeDetailScreen({super.key});

  @override
  State<PublicNoticeDetailScreen> createState() =>
      _PublicNoticeDetailScreenState();
}

class _PublicNoticeDetailScreenState extends State<PublicNoticeDetailScreen> {
  TextEditingController controller = TextEditingController();
  GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      drawer: CustomDrawer(),
      body: SafeArea(
          child: CustomBackground(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
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
                        ))
                  ],
                ),
                addVerticalSpace(20),
                CustomSearchBox(
                  controller: controller,
                ),
                addVerticalSpace(20),
                controller.text.isEmpty
                    ? addVerticalSpace(0)
                    : Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Text(
                          "Your search result",
                          style: bodyText14w400(color: black),
                        ),
                      ),
                PublicNoticeDetailData(),
                addVerticalSpace(25),
                GestureDetector(
                    onTap: () {
                      NextScreen(context, AddNewNoticeScreen());
                    },
                    child: CustomButton(text: "Add new Notice", height: 53))
              ],
            ),
          ),
        ),
      )),
    );
  }
}
