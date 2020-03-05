import 'package:flutter/material.dart';
import 'package:flutter_app/Utils/API.dart';

class MainHeadline extends StatelessWidget {

  String imageUrl,title;

  MainHeadline(this.imageUrl,this.title);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Container(
              child: Image.network(API.BASE_URL +imageUrl)),
          Positioned.fill(
            child: Container(
              alignment: Alignment.bottomLeft,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: <Color>[
                    Colors.black45,
                    Colors.black12,
                    Colors.black
                  ])),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    title,
                    style: TextStyle(color: Colors.white, fontSize: 24.0,fontWeight: FontWeight.bold),
                  ),
                )
            ),
          ),

        ],
      ),
    );
  }
}
