import 'package:basic_navigator/demo_button.dart';
import 'package:basic_navigator/second_page.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  FirstPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buildContents(
              [
                Text('Pattern 1'),
                DemoButton(
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
              ],
            ),
            _buildContents(
              [
                Text('Pattern 2'),
                DemoButton(
                  onPressed: () async {
                    await Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return SecondPage();
                        },
                      ),
                    );
                    showDialog(
                      context: context,
                      builder: (context) => _buildDialog(),
                    );
                  },
                ),
              ],
            ),
            _buildContents(
              [
                Text('Pattern 3'),
                DemoButton(
                  onPressed: () async {
                    final result = await Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return SecondPage();
                        },
                      ),
                    );
                    showDialog(
                      context: context,
                      builder: (context) {
                        return _buildDialog(
                          contentText: 'I received ${result}!!',
                        );
                      },
                    );
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget _buildContents(List<Widget> children) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 16.0),
    child: Column(
      children: children,
    ),
  );
}

Widget _buildDialog({String contentText}) {
  final content = contentText ?? 'I\'m back!';
  return Center(
    child: Container(
      height: 60.0,
      width: 120.0,
      child: Text(
        content,
        style: TextStyle(
          color: Colors.blue,
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      decoration: BoxDecoration(color: Colors.white),
    ),
  );
}
