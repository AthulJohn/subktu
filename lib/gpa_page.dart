import 'package:flutter/material.dart';
import 'sgpa.dart';
import 'cgpa.dart';
import 'package:flutter/services.dart';

class GPAHomePage extends StatefulWidget {
  @override
  _GPAHomePageState createState() => _GPAHomePageState();
}

class _GPAHomePageState extends State<GPAHomePage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          resizeToAvoidBottomPadding: false, //for not changing the screen size

          appBar: AppBar(
            backgroundColor: Colors.green,
            title: Text(
              'GPA Calculator',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                // color: Colors.black
              ),
            ),
            bottom: TabBar(tabs: <Widget>[
              Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "SGPA",
                    style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                  )),
              Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "CGPA",
                    style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                  )),
            ]),
          ),
          drawer: Drawer(
            child: ListView(
              children: <Widget>[
                ListTile(
                  title: Text("Home"),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Sgpa(),
              Cgpa(),
            ],
          )),
    );
  }
}
