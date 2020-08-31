import 'package:destini_flutter/StoryBrain.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DestiniApp());
}

StoryBrain storyBrain = new StoryBrain();

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
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    storyBrain.getStory(),
                    style: TextStyle(fontSize: 25.0, color: Colors.white),
                  ),
                ),
              )),
          Visibility(
            visible: true,
            child: Expanded(
                child: Padding(
              padding: EdgeInsets.all(15.0),
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    storyBrain.nextStory(1);
                  });
                },
                child: Text(storyBrain.getChoice1(),
                    style: TextStyle(fontSize: 20.0, color: Colors.white)),
                color: Colors.red,
              ),
            )),
          ),
          Visibility(
            visible: storyBrain.buttonShouldBeVisible(),
            child: Expanded(
                child: Padding(
              padding: EdgeInsets.all(15.0),
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    storyBrain.nextStory(2);
                  });
                },
                child: Text(storyBrain.getChoice2(),
                    style: TextStyle(fontSize: 20.0, color: Colors.white)),
                color: Colors.blue,
              ),
            )),
          )
        ],
      ),
    );
  }
}
