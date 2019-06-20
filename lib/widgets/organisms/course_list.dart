import 'package:albatrak/providers/nearby_course_provider.dart';
import 'package:albatrak/widgets/organisms/course_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CourseList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final courseProvider = Provider.of<NearybyCourseProvider>(context);
    if (courseProvider.courses == null) {
      return Container();
    }
    return ListView(
        children: courseProvider.courses.resources
            .map(
              (course) => CourseCard(course: course),
            )
            .toList());
  }
}
