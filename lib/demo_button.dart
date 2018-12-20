import 'package:flutter/material.dart';

class DemoButton extends StatelessWidget {
  DemoButton({Key key, this.onPressed}) : super(key: key);

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text('Next'),
      onPressed: onPressed,
    );
  }
}
