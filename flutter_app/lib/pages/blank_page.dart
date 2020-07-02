import 'package:flutter/material.dart';

class BlankPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('ReEco'),
      ),
      body: Container(
        child: Text('ログイン後のページ'),
      ),
    );
  }
}
