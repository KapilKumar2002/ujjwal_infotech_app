import 'package:flutter/material.dart';
import 'package:ujjwal_infotech_app/screens/mainscreens/addnewpapercutout.dart';
import 'package:ujjwal_infotech_app/utils/constants.dart';
import 'package:ujjwal_infotech_app/widgets/custombackground.dart';
import 'package:ujjwal_infotech_app/widgets/custombutton.dart';
import 'package:ujjwal_infotech_app/widgets/customsearchbox.dart';
import 'package:ujjwal_infotech_app/widgets/nextscreen.dart';
import 'package:ujjwal_infotech_app/widgets/papercutouttable.dart';

class PaperCutoutScreen extends StatefulWidget {
  const PaperCutoutScreen({super.key});

  @override
  State<PaperCutoutScreen> createState() => _PaperCutoutScreenState();
}

class _PaperCutoutScreenState extends State<PaperCutoutScreen> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomBackground(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                addVerticalSpace(25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/menu.png"),
                    Text(
                      "Paper Cutouts",
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
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: CustomSearchBox(
                    controller: controller,
                  ),
                ),
                controller.text.isEmpty
                    ? addVerticalSpace(0)
                    : Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Text(
                          "Your search result",
                          style: bodyText14w400(color: black),
                        ),
                      ),
                PaperCutoutTable(),
                addVerticalSpace(20),
                GestureDetector(
                    onTap: () {
                      NextScreen(context, AddNewPaperCutout());
                    },
                    child:
                        CustomButton(text: "Add New Paper Cutout", height: 53)),
                addVerticalSpace(20)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
