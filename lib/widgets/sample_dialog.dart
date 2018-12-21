import 'package:flutter/material.dart';

class SampleDialog extends StatelessWidget {
  const SampleDialog({Key key, this.contentText}) : super(key: key);

  final String contentText;

  @override
  Widget build(BuildContext context) {
    final content = contentText ?? 'I\'m back!';
    return AlertDialog(
      title: Text(
        'Alert',
        style: Theme.of(context).textTheme.title,
      ),
      content: Text(
        content,
        maxLines: 2,
        style: Theme.of(context).textTheme.body2,
      ),
    );
  }
}
