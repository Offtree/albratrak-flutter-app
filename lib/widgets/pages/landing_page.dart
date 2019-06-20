import 'package:albatrak/widgets/organisms/course_list.dart';
import 'package:albatrak/widgets/templates/tabbed_multi_screen_scaffold.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  LandingPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return TabbedMultiScreenScaffold(
      items: [
        TabbedItem(
          title: Text("Your stats"),
          tabIcon: Icon(Icons.home),
          tabText: Text("Home"),
          bodyContent: Text("Home"),
        ),
        TabbedItem(
          title: Text("Courses"),
          tabIcon: Icon(Icons.golf_course),
          tabText: Text("Courses"),
          bodyContent: CourseList(),
        ),
        TabbedItem(
          title: Text("Friends on and off the course"),
          tabIcon: Icon(Icons.group),
          tabText: Text("Social"),
          bodyContent: Text("Social"),
        ),
      ],
    );
  }
}
