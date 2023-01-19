import 'package:flutter/material.dart';
import 'package:ujjwal_infotech_app/utils/constants.dart';
import 'package:ujjwal_infotech_app/widgets/custombackground.dart';

class PaperCutoutPicScreen extends StatefulWidget {
  const PaperCutoutPicScreen({super.key});

  @override
  State<PaperCutoutPicScreen> createState() => _PaperCutoutPicScreenState();
}

class _PaperCutoutPicScreenState extends State<PaperCutoutPicScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: CustomBackground(
            child: Column(
              children: [
                Container(
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
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
                Container(
                    width: width(context),
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/papercutout.png",
                          width: double.infinity,
                        )
                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
