import 'package:flutter/material.dart';
import 'package:newsappassignment/utils/AppPlaceHolders.dart';
import 'package:newsappassignment/utils/AppStrings.dart';
import 'package:newsappassignment/utils/AppStyles.dart';
import '../model/NewsModel.dart';

class ListTileViewer extends StatelessWidget {
  const ListTileViewer(this.newsitem);

  final NewsModel newsitem;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(children: [
        CircleAvatar(
          radius: 35.0,
          backgroundColor: Colors.white,
          child: ClipOval(
            child: FadeInImage.assetNetwork(
              height: MediaQuery.of(context).size.width / 3.5,
              width: MediaQuery.of(context).size.width / 3.5,
              placeholder: AppPlaceHolders.networkImageAvatar,
              image: newsitem.imageUrl!,
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width / 12,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 1.4,
              child: Text(
                newsitem.title!,
                style: AppStyles.postTitleTextStyle, textAlign: TextAlign.justify
              ),
            ),
            SizedBox(height: 10),
            Container(
                width: MediaQuery.of(context).size.width / 1.4,
                child: Text(
                  newsitem.summary!,
                  style: AppStyles.postSummaryTextStyle, textAlign: TextAlign.justify
                )),
            Row(children: [
              Text(
                AppStrings.sourceText,
                style: AppStyles.postSourceTextStyle,
              ),
              Text(newsitem.newsSite!),
            ]),
          ],
        ),
      ]),
      Divider(
        color: Colors.black26,
      ),
      Row(children: [
        Text(AppStrings.eventText),
        Text(newsitem.events!.isNotEmpty ? newsitem.events![0].provider! : ""),
      ]),
      Row(children: [
        Text(AppStrings.launchesText),
        Text(newsitem.launches!.isNotEmpty ? newsitem.launches![0].provider! : "")
      ]),
      Row(children: [
        Text(AppStrings.publishedAtText),
        Text(newsitem.publishedAt!)
      ]),
      // Row(children: [Text("Updated at: "), Text(newsitem.updatedAt!)]),
      Divider(
        color: Colors.black45,
        thickness: 3,
      ),
    ]);
    //resocoder //drycode
  }
}
