import 'package:flutter/material.dart';
import 'package:flutter_app/Utils/API.dart';

class SingleImageHeadline extends StatelessWidget {

  var title,subtitle,imageUrl;

  SingleImageHeadline(this.title, this.subtitle, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Center(
      child: Card(
        margin: EdgeInsets.only(top: 4.0,bottom: 4.0),
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {
            print('Card tapped.');
          },
          child: Column(
            mainAxisSize: MainAxisSize.min,
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
              Text(
                subtitle,
                style: textTheme.subtitle1,
                maxLines: 6,
                overflow: TextOverflow.ellipsis,
              )
            ],
          ),
        ),
      ),
    );
  }
}
