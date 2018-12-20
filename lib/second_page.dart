import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  SecondPage({
    Key key,
  }) : super(key: key);

  String receivedValue = 'I\'ll receive some value!';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SecondPage')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(receivedValue),
            RaisedButton(
              child: Text('Next'),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
