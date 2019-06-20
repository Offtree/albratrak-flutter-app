import 'package:albatrak/models/course/course.dart';
import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  CourseCard({Key key, @required this.course}) : super(key: key);

  final Course course;

  @override
  Widget build(BuildContext context) {
    final address = course.address;
    return Card(
      child: ListTile(
        onTap: () {
          navigateToCourse(context);
        },
        leading: CircleAvatar(
          child: Icon(Icons.golf_course),
        ),
        title: Text(course.name),
        subtitle: Text("${address.city}, ${address.state}"),
      ),
    );
  }

  /// Navigates to a new screen with detailed information
  /// regarding a course.
  void navigateToCourse(BuildContext context) {
    Navigator.of(context).pushNamed("/course/${course.id}");
  }
}
