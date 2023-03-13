import 'package:flutter/material.dart';
import 'package:flutterprofile/utils/text_style.dart';
import '../model/model.dart';
import '../utils/AppColors.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(dummyData.name, style: headerTextStyle),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, bottom: 20),
            child: Text(dummyData.designation, style: bodyTextStyle),
          ),
          Text(dummyData.description, style: subHeaderTextStyle),
          SingleChildScrollView(
            padding: EdgeInsets.only(top: 20),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Education",
                    style: headerTextStyle,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: dummyData.educations.length,
                    itemBuilder: (context, index) {
                      return _itemWidget(dummyData.educations[index]['date'],
                          dummyData.educations[index]['education']);
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _itemWidget(String title, String description) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 10),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                height: 15,
                width: 15,
                margin: EdgeInsets.only(right: 10),
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
              ),
              Text(
                title,
                style: subHeaderTextStyle,
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 6, top: 10),
            decoration: BoxDecoration(
                border: Border(left: BorderSide(width: 2, color: Colors.grey))),
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.only(left: 8.0),
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: cardBGColor),
              child: Text(description),
            ),
          )
        ],
      ),
    );
  }
}
