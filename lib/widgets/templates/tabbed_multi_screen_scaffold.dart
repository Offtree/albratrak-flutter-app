import 'package:flutter/material.dart';

class TabbedItem {
  Widget bodyContent;
  Widget tabIcon;
  Widget tabText;
  Widget title;
  TabbedItem({
    @required this.bodyContent,
    @required this.tabIcon,
    @required this.tabText,
    @required this.title,
  });
}

class TabbedMultiScreenScaffold extends StatefulWidget {
  TabbedMultiScreenScaffold({Key key, @required this.items}) : super(key: key);
  final List<TabbedItem> items;

  @override
  _TabbedMultiScreenScaffoldState createState() =>
      _TabbedMultiScreenScaffoldState();
}

class _TabbedMultiScreenScaffoldState extends State<TabbedMultiScreenScaffold> {
  int _selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: widget.items[_selectedTab].title,
      ),
      body: Container(
        child: widget.items[_selectedTab].bodyContent,
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: this.changeScreen,
          currentIndex: _selectedTab,
          items: widget.items
              .map(
                (item) => BottomNavigationBarItem(
                      icon: item.tabIcon,
                      title: item.tabText,
                    ),
              )
              .toList()),
    );
  }

  void changeScreen(int index) {
    setState(() {
      _selectedTab = index;
    });
  }
}
