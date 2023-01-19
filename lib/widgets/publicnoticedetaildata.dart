import 'package:flutter/material.dart';
import 'package:ujjwal_infotech_app/screens/mainscreens/papercutout.dart';
import 'package:ujjwal_infotech_app/utils/constants.dart';
import 'package:ujjwal_infotech_app/widgets/nextscreen.dart';

class PublicNoticeDetailData extends StatefulWidget {
  const PublicNoticeDetailData({super.key});

  @override
  State<PublicNoticeDetailData> createState() => _PublicNoticeDetailDataState();
}

class _PublicNoticeDetailDataState extends State<PublicNoticeDetailData> {
  List columns = [
    "Sr. No.",
    "Date",
    "Newspaper",
    "Type",
    "Property",
    "Village/City",
    "Taluka",
    "District",
    "SR / Plot / Sr. No.",
    "Area",
    "Flat detials",
    "Advocate",
    "Days",
    "Lapse date",
    "View",
  ];

  List data = [
    {
      "index": "1",
      "date": "01.01.2023",
      "newspaper": "The Indian Express",
      "Type": "Purchase/Sell",
      "property": "Flat",
      "village/city": "Ravet-Pune",
      "taluka": "",
      "district": "",
      "sr": "gat no. 405",
      "area": "",
      "flat": "Inspira",
      "advocate": "EFL",
      "days": "7",
      "lapse": "11.01.2023"
    },
    {
      "index": "1",
      "date": "01.01.2023",
      "newspaper": "The Indian Express",
      "Type": "Purchase/Sell",
      "property": "Flat",
      "village/city": "Ravet-Pune",
      "taluka": "",
      "district": "",
      "sr": "gat no. 405",
      "area": "",
      "flat": "Inspira",
      "advocate": "EFL",
      "days": "7",
      "lapse": "11.01.2023"
    },
    {
      "index": "1",
      "date": "01.01.2023",
      "newspaper": "The Indian Express",
      "Type": "Purchase/Sell",
      "property": "Flat",
      "village/city": "Ravet-Pune",
      "taluka": "",
      "district": "",
      "sr": "gat no. 405",
      "area": "",
      "flat": "Inspira",
      "advocate": "EFL",
      "days": "7",
      "lapse": "11.01.2023"
    },
    {
      "index": "1",
      "date": "01.01.2023",
      "newspaper": "The Indian Express",
      "Type": "Purchase/Sell",
      "property": "Flat",
      "village/city": "Ravet-Pune",
      "taluka": "",
      "district": "",
      "sr": "gat no. 405",
      "area": "",
      "flat": "Inspira",
      "advocate": "EFL",
      "days": "7",
      "lapse": "11.01.2023"
    }
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
            for (var i in columns)
              DataColumn(
                label: Text(
                  i,
                ),
              ),
            DataColumn(
                label: Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Image.asset("assets/camera.png"),
            )),
            DataColumn(label: Text("Save/Edit")),
            DataColumn(label: Text("Query")),
            DataColumn(label: Text("Share")),
          ],
          rows: [
            for (var i in data)
              // DataRow(
              //     cells: [for (var j = 0; j < 19; j++) DataCell(Container())]),
              DataRow(
                  onLongPress: () {
                    NextScreen(context, PaperCutoutScreen());
                  },
                  cells: [
                    DataCell(Text(
                      i['index'],
                      style: bodyText12normal(color: black),
                    )),
                    DataCell(
                        Text(i['date'], style: bodyText12normal(color: black))),
                    DataCell(Text(i['newspaper'],
                        style: bodyText12normal(color: black))),
                    DataCell(
                        Text(i['Type'], style: bodyText12normal(color: black))),
                    DataCell(Text(i['property'],
                        style: bodyText12normal(color: black))),
                    DataCell(Text(i['village/city'],
                        style: bodyText12normal(color: black))),
                    DataCell(Text(i['taluka'],
                        style: bodyText12normal(color: black))),
                    DataCell(Text(i['district'],
                        style: bodyText12normal(color: black))),
                    DataCell(
                        Text(i['sr'], style: bodyText12normal(color: black))),
                    DataCell(
                        Text(i['area'], style: bodyText12normal(color: black))),
                    DataCell(
                        Text(i['flat'], style: bodyText12normal(color: black))),
                    DataCell(Text(i['advocate'],
                        style: bodyText12normal(color: black))),
                    DataCell(
                        Text(i['days'], style: bodyText12normal(color: black))),
                    DataCell(Text(i['lapse'],
                        style: bodyText12normal(color: black))),
                    DataCell(
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Icon(
                          Icons.remove_red_eye_outlined,
                          size: 20,
                        ),
                      ),
                    ),
                    DataCell(
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Icon(
                          Icons.picture_as_pdf_outlined,
                          size: 20,
                        ),
                      ),
                    ),
                    DataCell(Center(child: Image.asset("assets/edit.png"))),
                    DataCell(Text("Please check",
                        style: bodyText12normal(color: black))),
                    DataCell(
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Icon(
                          Icons.share_outlined,
                          size: 20,
                        ),
                      ),
                    ),
                  ]),
          ]),
    );
  }
}
