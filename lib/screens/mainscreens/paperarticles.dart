import 'package:flutter/material.dart';
import 'package:ujjwal_infotech_app/screens/mainscreens/paperarticlesdata.dart';
import 'package:ujjwal_infotech_app/utils/constants.dart';
import 'package:ujjwal_infotech_app/widgets/custombackground.dart';
import 'package:ujjwal_infotech_app/widgets/custombutton.dart';
import 'package:ujjwal_infotech_app/widgets/customdrawer.dart';
import 'package:ujjwal_infotech_app/widgets/nextscreen.dart';

class PaperArticlesScreen extends StatefulWidget {
  const PaperArticlesScreen({super.key});

  @override
  State<PaperArticlesScreen> createState() => _PaperArticlesScreenState();
}

class _PaperArticlesScreenState extends State<PaperArticlesScreen> {
  List paperArticles = [
    {"title": "Banking"},
    {"title": "Real Estate"},
    {"title": "Revenue"},
    {"title": "Registration"},
    {"title": "Text"},
    {"title": "Text"},
  ];
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
                        "Paper articles",
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
                  addVerticalSpace(75),
                  GridView.builder(
                      shrinkWrap: true,
                      itemCount: paperArticles.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20,
                          childAspectRatio: width(context) * .415 / 80,
                          crossAxisCount: 2),
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            NextScreen(context, PaperArticlesDataScreen());
                          },
                          child: CustomButton(
                              text: paperArticles[index]['title'], height: 80),
                        );
                      })
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
