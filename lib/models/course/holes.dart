import 'dart:convert';

import 'package:albatrak/models/common/geo_point.dart';
import 'package:albatrak/models/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'holes.g.dart';

abstract class Hole implements Built<Hole, HoleBuilder> {
  /// Id for the hole on the course
  int get id;

  /// Id for the course the hole is on.
  ///
  /// see: `models.Course`
  int get courseid;

  /// 1-18 hole number
  int get number;

  /// `GeoPoint` of the flag
  GeoPoint get flagcoords;

  /// Angle the hole is at
  double get rotation;

  BuiltList<GeoPoint> get vectors;

  // TODO: dimentitons range

  Hole._();

  factory Hole([updates(HoleBuilder b)]) = _$Hole;

  String toJson() {
    return json.encode(serializers.serializeWith(Hole.serializer, this));
  }

  static Hole fromJson(String jsonString) {
    return serializers.deserializeWith(
        Hole.serializer, json.decode(jsonString));
  }

  static Serializer<Hole> get serializer => _$holeSerializer;
}
