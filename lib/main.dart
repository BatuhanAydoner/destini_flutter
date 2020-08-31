import 'package:flutter/material.dart';

void main() {
  runApp(DestiniApp());
}

class DestiniApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: DestiniPage(),
      ),
    );
  }
}

class DestiniPage extends StatefulWidget {
  @override
  _DestiniPageState createState() => _DestiniPageState();
}

class _DestiniPageState extends State<DestiniPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.red,
          shape: BoxShape.rectangle,
          image: DecorationImage(
              image: AssetImage("images/background.png"), fit: BoxFit.cover)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              flex: 5,
              child: Center(
                child: Text(
                  "Story text will go here.",
                  style: TextStyle(fontSize: 25.0, color: Colors.white),
                ),
              )),
          Expanded(
              child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              onPressed: () {},
              child: Text("Choice 1",
                  style: TextStyle(fontSize: 20.0, color: Colors.white)),
              color: Colors.red,
            ),
          )),
          Expanded(
              child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              onPressed: () {},
              child: Text("Choice 2",
                  style: TextStyle(fontSize: 20.0, color: Colors.white)),
              color: Colors.blue,
            ),
          ))
        ],
      ),
    );
  }
}
