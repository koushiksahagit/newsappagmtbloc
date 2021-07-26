import 'package:flutter/material.dart';
import 'package:newsappassignment/utils/AppStrings.dart';
import 'package:newsappassignment/utils/AppStyles.dart';
import 'package:newsappassignment/utils/CustomColors.dart';
import 'package:newsappassignment/view/screens/ListTileViewer.dart';
import 'package:newsappassignment/view/model/NewsModel.dart';

class BlockStreamViewUI extends StatelessWidget {
  List<NewsModel> snapshot;
  BuildContext con;

  BlockStreamViewUI(this.snapshot, this.con);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: CustomColors.appBarBackgroundColor,
              title: Text(
                AppStrings.homeTitleText,
                style: AppStyles.homeTitleTextStyle,
              ),
            ),
            resizeToAvoidBottomInset: false,
            backgroundColor: Colors.white,
            body: Container(
              padding: EdgeInsets.fromLTRB(5, 10, 5, 0),
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                        itemCount: snapshot.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTileViewer((snapshot[index]));
                        }),
                  ),
                ],
              ),
            )));
  }
}
