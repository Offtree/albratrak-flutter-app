import 'dart:convert';

import 'package:albatrak/models/common/address.dart';
import 'package:albatrak/models/common/geo_point.dart';
import 'package:albatrak/models/serializers.dart';
import "package:built_value/built_value.dart";
import "package:built_value/serializer.dart";

part 'course.g.dart';

abstract class Course implements Built<Course, CourseBuilder> {
  int get id;
  String get name;
  String get phonenumber;
  Address get address;
  GeoPoint get coordinates;

  Course._();

  String toJson() {
    return json.encode(serializers.serializeWith(Course.serializer, this));
  }

  static Course fromJson(String jsonString) {
    return serializers.deserializeWith(
        Course.serializer, json.decode(jsonString));
  }

  factory Course([updates(CourseBuilder b)]) = _$Course;

  static Serializer<Course> get serializer => _$courseSerializer;
}
