import 'package:albatrak/models/common/paginated.dart';
import 'package:albatrak/models/course/course.dart';
import 'package:built_value/serializer.dart';
import 'package:albatrak/models/course/holes.dart';
import 'package:albatrak/models/serializers.dart';
import 'package:albatrak/models/course/teebox.dart';
import 'package:dio/dio.dart';

String basePath = "http://192.168.86.30:3000/v1";

class CourseInfoService {
  Future<Paginated<Course>> getCourses() async {
    Response response = await Dio().get("$basePath/courses");
    final paginatedCourse = const FullType(Paginated, [FullType(Course)]);
    return serializers.deserialize(
      response.data,
      specifiedType: paginatedCourse,
    );
  }

  Future<Course> getCourseDetail(String id) async {
    Response response = await Dio().get("$basePath/courses/$id");
    return serializers.deserializeWith(Course.serializer, response.data);
  }

  Future<Paginated<TeeBox>> getCourseTeeboxes(String id) async {
    Response response = await Dio().get("$basePath/courses/$id/teeboxes");
    final paginatedTeeBox = const FullType(Paginated, [FullType(Hole)]);
    return serializers.deserialize(
      response.data,
      specifiedType: paginatedTeeBox,
    );
  }

  Future<Paginated<Hole>> getCourseHoles(String id) async {
    Response response = await Dio().get("$basePath/courses/$id/holes");
    final paginatedHoles = const FullType(Paginated, [FullType(Hole)]);
    return serializers.deserialize(
      response.data,
      specifiedType: paginatedHoles,
    );
  }
}
