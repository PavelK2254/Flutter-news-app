import 'package:flutter/material.dart';
import 'package:flutter_app/Utils/API.dart';
import 'package:flutter_app/Utils/Integers.dart';

class SingleImageHeadline extends StatelessWidget {

  var title,subtitle,imageUrl,date;

  SingleImageHeadline(this.title, this.subtitle, this.imageUrl,this.date);

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Center(
      child: Card(
        margin: EdgeInsets.all(Integers.DEFAULT_PADDING),
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {
            print('Card tapped.');
          },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
               // child: Image.asset("assets/images/noImage.jpeg"),
                  child: Image.network(API.BASE_URL +imageUrl)
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  title,
                  style: textTheme.headline6,
                  maxLines: 2,
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  date,
                  style: textTheme.caption,
                  maxLines: 1,
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  subtitle,
                  textAlign: TextAlign.start,
                  style: textTheme.bodyText2,
                  maxLines: 6,
                  overflow: TextOverflow.ellipsis,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
