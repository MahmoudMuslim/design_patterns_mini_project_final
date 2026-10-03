import 'package:flutter/material.dart';

/// Widget displaying demo/console output in a dialog box.
class DemoResultDialog extends StatelessWidget {
  final String title;
  final String content;

  const DemoResultDialog({
    super.key,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
      content: SingleChildScrollView(
        child: SelectableText(
          content,
          style: const TextStyle(fontFamily: 'monospace', fontSize: 14),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text(
            'Close',
            style: TextStyle(color: Colors.deepPurple),
          ),
        ),
      ],
    );
  }
}
