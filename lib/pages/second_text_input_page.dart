import 'package:flutter/material.dart';

class SecondTextInputPage extends StatefulWidget {
  @override
  SecondTextInputPageState createState() => SecondTextInputPageState();
}

class SecondTextInputPageState extends State<SecondTextInputPage> {
  String inputtedValue;

  @override
  void initState() {
    inputtedValue = '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SecondPage')),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height / 3,
              left: 60.0,
              right: 60.0,
            ),
            child: TextField(
              onChanged: (value) {
                inputtedValue = value;
              },
              onEditingComplete: () {
                Navigator.of(context).pop(inputtedValue);
              },
              autofocus: true,
              autocorrect: false,
            ),
          ),
        ),
      ),
    );
  }
}
