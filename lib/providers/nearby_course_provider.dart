import 'package:albatrak/models/common/paginated.dart';
import 'package:albatrak/models/course/course.dart';
import 'package:albatrak/services/course_info_service.dart';
import 'package:albatrak/services/service_locator.dart';
import 'package:flutter/widgets.dart';

class NearybyCourseProvider extends ChangeNotifier {
  Paginated<Course> courses;
  CourseInfoService _courseInfoService;

  NearybyCourseProvider() {
    _courseInfoService = sl<CourseInfoService>();
    getCourseList();
  }

  getCourseList() async {
    courses = await _courseInfoService.getCourses();
    notifyListeners();
  }
}
