import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Nextpageshow extends StatefulWidget {
  @override
  _NextpageshowState createState() => _NextpageshowState();
}

class _NextpageshowState extends State<Nextpageshow> {
  String f = "";
  SharedPreferences preferences =
      SharedPreferences.getInstance() as SharedPreferences;

  Future<String> loadfirstName() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString('first');
  }

  Future<String> loadsecondName() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString('second');
  }

  loadfirst() {
    loadfirstName().then((value) {
      setState(() {
        f = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("show my data here"),
      ),
      body: Column(
        children: <Widget>[
          FlatButton(
            child: new Text("print"),
            onPressed: () {
              loadfirst();
              print(f);
            },
          )
        ],
      ),
    );
  }
}
