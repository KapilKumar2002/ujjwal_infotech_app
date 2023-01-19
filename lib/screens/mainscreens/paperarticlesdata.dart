import 'package:flutter/material.dart';
import 'package:ujjwal_infotech_app/utils/constants.dart';
import 'package:ujjwal_infotech_app/widgets/custombackground.dart';
import 'package:ujjwal_infotech_app/widgets/customdrawer.dart';

class PaperArticlesDataScreen extends StatefulWidget {
  const PaperArticlesDataScreen({super.key});

  @override
  State<PaperArticlesDataScreen> createState() =>
      _PaperArticlesDataScreenState();
}

class _PaperArticlesDataScreenState extends State<PaperArticlesDataScreen> {
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
  GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      drawer: CustomDrawer(),
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
              addVerticalSpace(40),
              DataTable(
                  border: TableBorder.all(color: gray, width: 1.5),
                  showBottomBorder: false,
                  headingRowHeight: 43,
                  dataRowHeight: 43,
                  dataTextStyle: bodyText14normal(color: black),
                  dataRowColor:
                      MaterialStateColor.resolveWith((states) => white),
                  headingRowColor:
                      MaterialStateColor.resolveWith((states) => darkIndigo),
                  headingTextStyle: bodyText14Bold(color: white),
                  columns: [
                    DataColumn(label: Text("Particulars")),
                    DataColumn(label: Text("Display")),
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
                        ],
                      ),
                  ]),
            ],
          ),
        ),
      )),
    );
  }
}
