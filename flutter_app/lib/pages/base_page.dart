import 'package:flutter/material.dart';
import 'package:flutterapp/pages/blank_page.dart';
import 'package:flutterapp/pages/second_page.dart';
import 'package:flutterapp/pages/third_page.dart';
import 'package:flutterapp/pages/top_page.dart';

class BasePage extends StatefulWidget {
  @override
  _BasePageState createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  int _selectedIndex;

  void _onTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_selectedIndex == 0) {
      return TopPage(
        onTapped: _onTapped,
        selectedIndex: _selectedIndex,
      );
    }
    if (_selectedIndex == 1) {
      return SecondPage(
        onTapped: _onTapped,
        selectedIndex: _selectedIndex,
      );
    }
    if (_selectedIndex == 2 || _selectedIndex == 1) {
      return ThirdPage(
        onTapped: _onTapped,
        selectedIndex: _selectedIndex,
      );
    }
    return BlankPage();
  }
}
