import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  SecondPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SecondPage')),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('Go Back'),
              onPressed: () {
                Navigator.of(context).pop(['Cats', 'Dogs']);
              },
            ),
            RaisedButton(
              child: Text('Go Back'),
              onPressed: () {
                Navigator.of(context).pop('Cats');
              },
            ),
          ],
        ),
      ),
    );
  }
}
