import 'dart:convert';

import 'package:albatrak/models/serializers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'geo_point.g.dart';

abstract class GeoPoint implements Built<GeoPoint, GeoPointBuilder> {
  double get lat;
  double get long;

  @nullable
  String get type;

  GeoPoint._();

  factory GeoPoint([updates(GeoPointBuilder b)]) = _$GeoPoint;

  String toJson() {
    return json.encode(serializers.serializeWith(GeoPoint.serializer, this));
  }

  static GeoPoint fromJson(String jsonString) {
    return serializers.deserializeWith(
        GeoPoint.serializer, json.decode(jsonString));
  }

  static Serializer<GeoPoint> get serializer => _$geoPointSerializer;
}
