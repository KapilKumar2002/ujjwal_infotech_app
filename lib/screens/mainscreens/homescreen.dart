import 'package:flutter/material.dart';
import 'package:ujjwal_infotech_app/screens/mainscreens/gr.dart';
import 'package:ujjwal_infotech_app/screens/mainscreens/paperarticles.dart';
import 'package:ujjwal_infotech_app/screens/mainscreens/publicnoticedetailscreen.dart';
import 'package:ujjwal_infotech_app/utils/constants.dart';
import 'package:ujjwal_infotech_app/widgets/custombackground.dart';
import 'package:ujjwal_infotech_app/widgets/custombutton.dart';
import 'package:ujjwal_infotech_app/widgets/customdrawer.dart';
import 'package:ujjwal_infotech_app/widgets/nextscreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                children: [
                  addVerticalSpace(25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                          onTap: () {
                            _globalKey.currentState!.openDrawer();
                          },
                          child: Image.asset("assets/menu.png")),
                      Text(
                        "Hi,Anakin",
                        style: bodyText16w600(color: black),
                      )
                    ],
                  ),
                  addVerticalSpace(100),
                  GestureDetector(
                      onTap: () {
                        NextScreen(context, PublicNoticeDetailScreen());
                      },
                      child: CustomButton(text: "Public Notice", height: 80)),
                  addVerticalSpace(25),
                  GestureDetector(
                      onTap: () {
                        NextScreen(context, PaperArticlesScreen());
                      },
                      child: CustomButton(text: "Paper Articles", height: 80)),
                  addVerticalSpace(25),
                  GestureDetector(
                      onTap: () {
                        NextScreen(context, GRScreen());
                      },
                      child: CustomButton(text: "GR", height: 80)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
