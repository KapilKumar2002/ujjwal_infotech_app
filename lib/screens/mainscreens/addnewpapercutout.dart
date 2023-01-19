import 'package:flutter/material.dart';
import 'package:ujjwal_infotech_app/utils/constants.dart';
import 'package:ujjwal_infotech_app/widgets/custombackground.dart';
import 'package:ujjwal_infotech_app/widgets/custombutton.dart';
import 'package:ujjwal_infotech_app/widgets/customsearchbox.dart';
import 'package:ujjwal_infotech_app/widgets/noticetextfield.dart';
import 'package:ujjwal_infotech_app/widgets/papercutouttable.dart';

class AddNewPaperCutout extends StatefulWidget {
  const AddNewPaperCutout({super.key});

  @override
  State<AddNewPaperCutout> createState() => _AddNewPaperCutoutState();
}

class _AddNewPaperCutoutState extends State<AddNewPaperCutout> {
  TextEditingController controller = TextEditingController();
  bool _isSubmitted = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                addVerticalSpace(20),
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
                NoticeTextField(hint: "NewsPaper"),
                addVerticalSpace(15),
                NoticeTextField(hint: "Topic"),
                addVerticalSpace(15),
                NoticeTextField(hint: "Subject"),
                addVerticalSpace(15),
                NoticeTextField(hint: "Remark"),
                addVerticalSpace(15),
                NoticeTextField(hint: "Attach file /photo"),
                addVerticalSpace(15),
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
                PaperCutoutTable(),
                addVerticalSpace(25)
              ],
            ),
          ),
        ),
      )),
    );
  }
}
