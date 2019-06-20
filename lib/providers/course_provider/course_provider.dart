import 'package:albatrak/models/common/api_request.dart';
import 'package:albatrak/models/common/paginated.dart';
import 'package:albatrak/models/course/course.dart';
import 'package:albatrak/models/course/holes.dart';
import 'package:albatrak/models/course/teebox.dart';
import 'package:albatrak/services/course_info_service.dart';
import 'package:albatrak/services/service_locator.dart';
import 'package:flutter/widgets.dart';

class CourseProvider extends ChangeNotifier {
  ApiRequest<Course> course;
  Paginated<TeeBox> teeboxes;
  Paginated<Hole> holes;

  final courseId;
  CourseInfoService _courseInfoService;

  CourseProvider(this.courseId) {
    _courseInfoService = sl<CourseInfoService>();
    course = ApiRequest<Course>(
      (b) => b
        ..loading = true
        ..error = false
        ..data = null,
    );
    getCourseDetail();
  }

  getCourseDetail() async {
    final details = await Future.wait(
      [
        _courseInfoService.getCourseDetail(courseId),
        _courseInfoService.getCourseTeeboxes(courseId),
        _courseInfoService.getCourseHoles(courseId),
      ],
    );
    course = course.rebuild(
      (b) => b
        ..loading = false
        ..data = details[0],
    );
    teeboxes = details[1];
    holes = details[2];
    notifyListeners();
  }
}
