import 'package:flutter/material.dart';

class SingleImageHeadline extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
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
                child: Image.asset("assets/images/noImage.jpeg"),
              ),
              const ListTile(
                title: Text('The Enchanted Nightingale'),
                subtitle: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum viverra libero turpis. Phasellus cursus nisi non iaculis efficitur. Vestibulum tincidunt sed est vel rhoncus. Etiam lacinia mollis imperdiet. Fusce euismod urna sit amet nisl tempus faucibus. Nullam pulvinar libero libero, eget congue risus interdum nec. Fusce suscipit vel augue fringilla mollis. Etiam et aliquam nisi, vel efficitur diam. Curabitur ut egestas leo, vitae lacinia erat. Nunc quis est velit. Sed blandit risus nec lacinia placerat."),
              ),
            ],
          ),
        ),
      ),
    );
  }

}