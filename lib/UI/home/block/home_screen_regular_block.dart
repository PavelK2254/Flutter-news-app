import 'package:flutter/material.dart';

class RegularBlock extends StatelessWidget {
  RegularBlock();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            onTap: () {
              print('Card tapped.');
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ListTile(
                        title: Text("Text title",
                            maxLines: 2,
                            style: TextStyle(fontSize: 24.0),
                            overflow: TextOverflow.ellipsis),
                        subtitle: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum viverra libero turpis. Phasellus cursus nisi non iaculis efficitur. Vestibulum tincidunt sed est vel rhoncus. Etiam lacinia mollis imperdiet. Fusce euismod urna sit amet nisl tempus faucibus. Nullam pulvinar libero libero, eget congue risus interdum nec. Fusce suscipit vel augue fringilla mollis. Etiam et aliquam nisi, vel efficitur diam. Curabitur ut egestas leo, vitae lacinia erat. Nunc quis est velit. Sed blandit risus nec lacinia placerat.",
                            maxLines: 10,
                            style: TextStyle(fontSize: 16.0),
                            overflow: TextOverflow.ellipsis),
                      )
                      /*  Container(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Text title",
                            maxLines: 2,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 32.0
                            ),
                            overflow: TextOverflow.ellipsis),
                      ),
                      Container(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum viverra libero turpis. Phasellus cursus nisi non iaculis efficitur. Vestibulum tincidunt sed est vel rhoncus. Etiam lacinia mollis imperdiet. Fusce euismod urna sit amet nisl tempus faucibus. Nullam pulvinar libero libero, eget congue risus interdum nec. Fusce suscipit vel augue fringilla mollis. Etiam et aliquam nisi, vel efficitur diam. Curabitur ut egestas leo, vitae lacinia erat. Nunc quis est velit. Sed blandit risus nec lacinia placerat.",
                            maxLines: 10,
                            style: TextStyle(fontSize: 16.0),
                            overflow: TextOverflow.ellipsis),
                      ),*/
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
