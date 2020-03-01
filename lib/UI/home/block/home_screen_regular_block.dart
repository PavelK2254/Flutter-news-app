import 'package:flutter/material.dart';

class RegularBlock extends StatelessWidget {

  var title;
  var subtitle;


  RegularBlock(this.title, this.subtitle);

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
            child: Row(

              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          title,
                          style: textTheme.headline6,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ),
                      Text(
                        subtitle,
                        style: textTheme.subtitle1,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 10,
                      )
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
