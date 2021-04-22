import 'package:flutter/material.dart';

class Edrawer extends StatelessWidget {
  final List<String> children;

  Edrawer({
    @required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ElevatedButton(
        child: Text(
          'TEST',
          style: TextStyle(color: Colors.blue),
        ),
        onPressed: null,
      ),
    );
  }
}
