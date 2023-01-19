import 'package:flutter/material.dart';
import 'package:ujjwal_infotech_app/utils/constants.dart';
import 'package:ujjwal_infotech_app/widgets/custombackground.dart';
import 'package:ujjwal_infotech_app/widgets/customsearchbox.dart';

class PublicNoticeScreen extends StatefulWidget {
  const PublicNoticeScreen({super.key});

  @override
  State<PublicNoticeScreen> createState() => _PublicNoticeScreenState();
}

class _PublicNoticeScreenState extends State<PublicNoticeScreen> {
  List data = [
    {"date": "text", "text": "text"},
    {"date": "text", "text": "text"},
    {"date": "text", "text": "text"},
    {"date": "text", "text": "text"},
    {"date": "text", "text": "text"},
    {"date": "text", "text": "text"},
    {"date": "text", "text": "text"},
    {"date": "text", "text": "text"},
    {"date": "text", "text": "text"},
    {"date": "text", "text": "text"},
    {"date": "text", "text": "text"},
    {"date": "text", "text": "text"},
  ];
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    Image.asset("assets/menu.png"),
                    Text(
                      "Public Notice",
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
                addVerticalSpace(15),
                CustomSearchBox(
                  controller: controller,
                ),
                addVerticalSpace(12),
                DataTable(
                  showBottomBorder: true,
                  headingRowHeight: 43,
                  dataRowHeight: 43,
                  dataTextStyle: bodyText14normal(color: black),
                  dataRowColor:
                      MaterialStateColor.resolveWith((states) => white),
                  headingRowColor:
                      MaterialStateColor.resolveWith((states) => darkIndigo),
                  headingTextStyle: bodyText14Bold(color: white),
                  columns: [
                    DataColumn(label: Text("Date")),
                    DataColumn(label: Text("Text")),
                    DataColumn(label: Text("Pdf")),
                  ],
                  rows: [
                    for (var i in data)
                      DataRow(
                        cells: [
                          DataCell(
                            Text(i['date']),
                          ),
                          DataCell(
                            Text(i['text']),
                          ),
                          DataCell(
                            Icon(
                              Icons.picture_as_pdf_outlined,
                              size: 24,
                            ),
                          ),
                        ],
                      ),
                  ],
                ),
                addVerticalSpace(20)
              ],
            ),
          ),
        ),
      )),
    );
  }
}
