import 'package:basic_navigator/second_page.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  FirstPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First Page')),
      body: Center(
        child: RaisedButton(
          child: Text('Next'),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return SecondPage();
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
