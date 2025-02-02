import 'package:flutter/material.dart';
import 'package:flutter_app/Model/headline.dart';
import 'package:flutter_app/UI/home/VM/home_screen_vm.dart';
import 'package:flutter_app/UI/home/block/home_screen_main_headline.dart';
import 'package:flutter_app/UI/home/block/home_screen_regular_block.dart';
import 'package:flutter_app/UI/home/block/home_screen_single_image_headline.dart';
import 'package:flutter_app/Utils/Integers.dart';
import 'package:flutter_app/Utils/Parsers.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final localViewModel = new HomePageVM();

  Future<void> refreshPage() async {
    setState(() {});
  }

  _HomePageState();

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      localViewModel.getHeadlines();
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text("Drawer header"),
              decoration: BoxDecoration(color: Colors.blue),
            ),
            ListTile(
              title: Text("Option 1"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Option 2"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Option 3"),
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: RefreshIndicator(
          onRefresh: refreshPage,
          child: Container(
            padding: EdgeInsets.only(
                // left: Integers.DEFAULT_PADDING,
                //right: Integers.DEFAULT_PADDING,
                //top: Integers.DEFAULT_PADDING * 2,
                // bottom: Integers.DEFAULT_PADDING
                ),
            child: FutureBuilder(
              future: localViewModel.getHeadlines(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  List<Headline> headlines = snapshot.data;
                  return ListView.builder(
                      itemCount: headlines.length,
                      itemBuilder: (context, index) {
                        Headline headline =
                            headlines[(headlines.length - 1) - index];
                        if (headline.avatar != null) {
                          if (index == 0) {
                            return MainHeadline(
                                headline.avatar.url, headline.title);
                          } else {
                            return SingleImageHeadline(
                                headline.title,
                                headline.subtitle,
                                headline.avatar.url,
                                new DateManager(headline.updatedAt)
                                    .getFormattedDate());
                          }
                        }
                        return Container(
                            margin: EdgeInsets.only(
                                top: Integers.DEFAULT_PADDING,
                                bottom: Integers.DEFAULT_PADDING),
                            child: RegularBlock(
                                headline.title, headline.subtitle));
                      });
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              },
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.business), title: Text("Business")),
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
          BottomNavigationBarItem(
              icon: Icon(Icons.school), title: Text("School"))
        ],
        currentIndex: 1,
        selectedItemColor: Colors.red[800],
      ),
    );
  }
}
