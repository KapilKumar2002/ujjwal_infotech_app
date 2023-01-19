import 'package:flutter/material.dart';
import 'package:ujjwal_infotech_app/screens/myprofile/profileupdate.dart';
import 'package:ujjwal_infotech_app/utils/constants.dart';
import 'package:ujjwal_infotech_app/widgets/custombackground.dart';
import 'package:ujjwal_infotech_app/widgets/custombutton.dart';
import 'package:ujjwal_infotech_app/widgets/customtextfield.dart';
import 'package:ujjwal_infotech_app/widgets/nextscreen.dart';
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
                  labelText: "Name",
                  hintText: "Anakin Skywalker",
                  icon: "assets/person.png",
                ),
                addVerticalSpace(15),
                SelectCategoryWidget(
                    hint: "Select category", icon: "assets/briefcase.png"),
                addVerticalSpace(15),
                CustomTextField(
                  hintText: "+91 88888 88888",
                  labelText: "Mobile Number",
                  icon: "assets/phone.png",
                ),
                addVerticalSpace(15),
                CustomTextField(
                  hintText: "email@gmail.com",
                  labelText: "Email",
                  icon: "assets/mail.png",
                ),
                addVerticalSpace(15),
                CustomTextField(
                  hintText: "********",
                  labelText: "Password",
                  icon: "assets/key.png",
                  obscureCharacter: "*",
                  obscureText: true,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20, top: 120),
                  child: InkWell(
                    onTap: () {
                      NextScreen(context, ProfileUpdateScreen());
                    },
                    child: CustomButton(
                      text: "Save",
                      height: 53,
                    ),
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
