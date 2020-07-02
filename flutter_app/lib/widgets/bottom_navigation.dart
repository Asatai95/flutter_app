import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation(
      {@required this.onTapped, @required this.selectedIndex});

  final void Function(int) onTapped;
  final int selectedIndex;

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    var items;
    items = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: SvgPicture.asset(
          'assets/temperature-half.svg',
          allowDrawingOutsideViewBox: true,
          color: widget.selectedIndex == 0
              ? Color(0xFF53A679)
              : Colors.black.withOpacity(0.24),
        ),
        title: Text('現在の環境'),
      ),
      BottomNavigationBarItem(
        icon: SvgPicture.asset(
          'assets/icon_eco.svg',
          allowDrawingOutsideViewBox: true,
          color: widget.selectedIndex == 1
              ? Color(0xFF53A679)
              : Colors.black.withOpacity(0.24),
        ),
        title: Text('省エネ状況'),
      ),
      BottomNavigationBarItem(
        icon: SvgPicture.asset(
          'assets/people.svg',
          allowDrawingOutsideViewBox: true,
          color: widget.selectedIndex == 2
              ? Color(0xFF53A679)
              : Colors.black.withOpacity(0.24),
        ),
        title: Text('マイページ'),
      ),
    ];

    return BottomNavigationBar(
      items: items,
      currentIndex: widget.selectedIndex,
      onTap: (idx) {
        Navigator.of(context).popUntil((route) => !route.navigator.canPop());
        widget.onTapped(idx);
      },
    );
  }
}
