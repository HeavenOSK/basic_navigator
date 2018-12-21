import 'package:basic_navigator/widgets/sample_dialog.dart';
import 'package:basic_navigator/pages/second_simple_page.dart';
import 'package:basic_navigator/pages/second_text_input_page.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  FirstPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First Page')),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            alignment: Alignment.topCenter,
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height / 4),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                _buildContents(
                  [
                    Text('Pattern 1'),
                    RaisedButton(
                      child: Text('Next'),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return SecondSimplePage();
                            },
                          ),
                        );
                      },
                    ),
                  ],
                ),
                _buildContents(
                  [
                    Text('Pattern 2'),
                    RaisedButton(
                      child: Text('Next'),
                      onPressed: () async {
                        await Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return SecondSimplePage();
                            },
                          ),
                        );
                        showDialog(
                          context: context,
                          builder: (context) => SampleDialog(),
                        );
                      },
                    ),
                  ],
                ),
                _buildContents(
                  [
                    Text('Pattern 3'),
                    RaisedButton(
                      child: Text('Next'),
                      onPressed: () async {
                        final result = await Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return SecondTextInputPage();
                            },
                          ),
                        );
                        if (result != null) {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return SampleDialog(
                                contentText: 'I received $result !',
                              );
                            },
                          );
                        }
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _buildContents(List<Widget> children) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 40.0),
    child: Column(
      children: children,
    ),
  );
}
