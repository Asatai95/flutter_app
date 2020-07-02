import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  SecondPage({Key key, this.title, this.onTapped, this.selectedIndex})
      : super(key: key);

  final String title;
  final int selectedIndex;
  final Function(int) onTapped;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(title),
      ),
      body: Container(
        child: Text('テストページ'),
      ),
    );
  }
}
