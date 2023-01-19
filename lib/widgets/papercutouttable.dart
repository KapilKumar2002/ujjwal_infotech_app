import 'package:flutter/material.dart';
import 'package:ujjwal_infotech_app/screens/mainscreens/papercutoutpic.dart';
import 'package:ujjwal_infotech_app/screens/mainscreens/papercutoutview.dart';
import 'package:ujjwal_infotech_app/utils/constants.dart';
import 'package:ujjwal_infotech_app/widgets/nextscreen.dart';

class PaperCutoutTable extends StatefulWidget {
  const PaperCutoutTable({super.key});

  @override
  State<PaperCutoutTable> createState() => _PaperCutoutTableState();
}

class _PaperCutoutTableState extends State<PaperCutoutTable> {
  List columns = ["Sr. No.", "Date", "Newspaper", "Topic", "Subject", "View"];
  List data = [
    {
      "index": "1",
      "date": "01.01.2023",
      "newspaper": "The Indian Express",
      "topic": "Stamp duty 6%",
      "subject": "Registration",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
          horizontalMargin: 15,
          columnSpacing: 20,
          headingRowHeight: 36,
          dataTextStyle: bodyText14normal(color: black),
          dataRowColor: MaterialStateColor.resolveWith((states) => white),
          headingRowColor:
              MaterialStateColor.resolveWith((states) => darkIndigo),
          headingTextStyle: bodyText14Bold(color: white),
          dataRowHeight: 36,
          border: TableBorder.all(color: gray),
          columns: [
            for (var i in columns) DataColumn(label: Text(i)),
            DataColumn(label: Image.asset("assets/camera.png")),
            DataColumn(label: Text("Save/Edit")),
            DataColumn(label: Text("Remark")),
            DataColumn(label: Text("Share")),
          ],
          rows: [
            for (var i in data)
              DataRow(
                  onLongPress: () {
                    NextScreen(context, PaperCutoutPicScreen());
                  },
                  cells: [
                    DataCell(Text(i['index'])),
                    DataCell(Text(i['date'])),
                    DataCell(Text(i['newspaper'])),
                    DataCell(Text(i['topic'])),
                    DataCell(Text(i['subject'])),
                    DataCell(Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: InkWell(
                        onTap: () {
                          NextScreen(context, PaperCutoutViewScreen());
                        },
                        child: Icon(
                          Icons.remove_red_eye_outlined,
                          size: 20,
                        ),
                      ),
                    )),
                    DataCell(Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Icon(
                        Icons.picture_as_pdf_outlined,
                        size: 20,
                      ),
                    )),
                    DataCell(Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Icon(
                        Icons.collections_bookmark_outlined,
                        size: 20,
                      ),
                    )),
                    DataCell(Text("Please Check")),
                    DataCell(Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Icon(
                        Icons.share_outlined,
                        size: 20,
                      ),
                    )),
                  ]),
          ]),
    );
  }
}
