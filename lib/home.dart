import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:more_thane_one_var_in_shared_pref/nextpage.dart';

class MoreOne extends StatefulWidget {
  @override
  _MoreOneState createState() => _MoreOneState();
}

class _MoreOneState extends State<MoreOne> {
  String s="";
  Future<String> saveData() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString("first", "Mohaaamed")
  }
  prin(){
    setState(() {

      final myString = prefs.getString('my_string_key');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: new Text("Hp next Page")),
      body: Container(
          child: Column(
            children: <Widget>[
              TextField(
              controller: _controller,
              decoration: InputDecoration.collapsed(hintText: "Enter First Name"),
            ),
            TextField(
              controller: _controller2,
              decoration: InputDecoration.collapsed(hintText: "Enter Second Name"),
            ),
            
            OutlineButton(
              child: Text("Save Name"),
              onPressed: () {
                saveData();
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new Nextpageshow()));
              },
            ),

            ],
          ),
      ),
    );
  }
}
