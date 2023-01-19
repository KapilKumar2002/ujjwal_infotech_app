import 'package:flutter/material.dart';
import 'package:ujjwal_infotech_app/utils/constants.dart';

class PaperCutoutViewScreen extends StatefulWidget {
  const PaperCutoutViewScreen({super.key});

  @override
  State<PaperCutoutViewScreen> createState() => _PaperCutoutViewScreenState();
}

class _PaperCutoutViewScreenState extends State<PaperCutoutViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            addVerticalSpace(25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
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
            ),
            addVerticalSpace(35),
            Icon(
              Icons.remove_red_eye_outlined,
              size: 45,
            ),
            addVerticalSpace(25),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 25, right: 20),
                child: DataTable(
                    horizontalMargin: 15,
                    columnSpacing: 20,
                    headingRowHeight: 36,
                    dataTextStyle: bodyText14normal(color: black),
                    dataRowColor:
                        MaterialStateColor.resolveWith((states) => white),
                    headingRowColor:
                        MaterialStateColor.resolveWith((states) => darkIndigo),
                    headingTextStyle: bodyText14Bold(color: white),
                    dataRowHeight: 36,
                    border: TableBorder.all(color: gray),
                    columns: [
                      DataColumn(label: Text("No.")),
                      DataColumn(label: Text("Particulars")),
                      DataColumn(label: Text("Details")),
                    ],
                    rows: [
                      DataRow(cells: [
                        DataCell(Text("1")),
                        DataCell(Text("Paper Name")),
                        DataCell(Text("Sakal"))
                      ]),
                      DataRow(cells: [
                        DataCell(Text("2")),
                        DataCell(Text("Date")),
                        DataCell(Text("01.01.2023"))
                      ]),
                      DataRow(cells: [
                        DataCell(Text("3")),
                        DataCell(Text("District")),
                        DataCell(Text("Pune"))
                      ]),
                      DataRow(cells: [
                        DataCell(Text("4")),
                        DataCell(Text("Taluka")),
                        DataCell(Text("Haveli"))
                      ]),
                      DataRow(cells: [
                        DataCell(Text("5")),
                        DataCell(Text("Village/City")),
                        DataCell(Text("Talawade"))
                      ]),
                      DataRow(cells: [
                        DataCell(Text("6")),
                        DataCell(Text("Sr/GAT No./Plot No./Sector No.")),
                        DataCell(Text("167"))
                      ]),
                      DataRow(cells: [
                        DataCell(Text("7")),
                        DataCell(Text("Property Type")),
                        DataCell(Text("Land"))
                      ]),
                      DataRow(cells: [
                        DataCell(Text("8")),
                        DataCell(Text("Notice Type")),
                        DataCell(Text("Title verification"))
                      ]),
                      DataRow(cells: [
                        DataCell(Text("9")),
                        DataCell(Text("Time Period")),
                        DataCell(Text("15 days"))
                      ]),
                      DataRow(cells: [
                        DataCell(Text("10")),
                        DataCell(Text("Last Date")),
                        DataCell(Text("15.01.2023"))
                      ]),
                    ]),
              ),
            )
          ],
        ),
      )),
    );
  }
}
