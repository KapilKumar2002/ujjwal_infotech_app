import 'package:flutter/material.dart';
import 'package:ujjwal_infotech_app/utils/constants.dart';
import 'package:ujjwal_infotech_app/widgets/custombackground.dart';
import 'package:ujjwal_infotech_app/widgets/custombutton.dart';
import 'package:ujjwal_infotech_app/widgets/customtextfield.dart';
import 'package:ujjwal_infotech_app/widgets/selectcategorywidget.dart';

class CreateProfile extends StatefulWidget {
  const CreateProfile({super.key});

  @override
  State<CreateProfile> createState() => _CreateProfileState();
}

class _CreateProfileState extends State<CreateProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomBackground(
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "My Profile",
                        style: bodyText26w600(color: appColor),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.close,
                          size: 35,
                        ),
                      )
                    ],
                  ),
                ),
                CustomTextField(
                  hint: "Name",
                  icon: "assets/person.png",
                  hide: false,
                ),
                addVerticalSpace(15),
                SelectCategoryWidget(
                    hint: "Select category", icon: "assets/briefcase.png"),
                addVerticalSpace(15),
                CustomTextField(
                  hint: "Mobile Number",
                  icon: "assets/phone.png",
                  hide: false,
                ),
                addVerticalSpace(15),
                CustomTextField(
                  hint: "Email",
                  icon: "assets/mail.png",
                  hide: false,
                ),
                addVerticalSpace(15),
                CustomTextField(
                  hint: "Password",
                  icon: "assets/key.png",
                  obscureCharacter: "*",
                  hide: true,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20, top: 120),
                  child: CustomButton(
                    text: "Save",
                    height: 53,
                  ),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
