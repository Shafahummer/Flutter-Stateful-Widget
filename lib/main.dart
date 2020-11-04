import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.deepOrange,
  ));
  runApp(MaterialApp(
    home: MyWidget(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyWidget extends StatefulWidget {
  @override
  MyWidgetState createState() => MyWidgetState();
}

class MyWidgetState extends State<MyWidget> {
  int counter = 0;
  List<String> numbers = [
    "one",
    "two",
    "three",
    "four",
    "five",
    "six",
    "seven",
    "eight",
    "nine",
    "ten"
  ];

  String defaultText = "English Numbers";

  void displayNumbers() {
    setState(() {
      defaultText = numbers[counter];
      if (counter < 9)
        counter += 1;
      else {
        counter = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful widget"),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              defaultText,
              style: TextStyle(fontSize: 20.0),
            ),
            Text(
              counter.toString(),
              style: TextStyle(fontSize: 20.0),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
            RaisedButton(
                onPressed: displayNumbers,
                child: Text("Call numbers"),
                color: Colors.pink)
          ],
        )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment Counter',
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
    );
  }
}
