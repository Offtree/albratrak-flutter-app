import 'dart:convert';
import 'package:albatrak/models/serializers.dart';
import "package:built_value/built_value.dart";
import "package:built_value/serializer.dart";

part 'teebox.g.dart';

abstract class TeeBox implements Built<TeeBox, TeeBoxBuilder> {
  int get courseid;

  @nullable
  String get teeboxtype;

  @nullable
  String get color;

  @nullable
  double get slope;

  @nullable
  double get rating;

  TeeBox._();

  String toJson() {
    return json.encode(serializers.serializeWith(TeeBox.serializer, this));
  }

  static TeeBox fromJson(String jsonString) {
    return serializers.deserializeWith(
        TeeBox.serializer, json.decode(jsonString));
  }

  factory TeeBox([updates(TeeBoxBuilder b)]) = _$TeeBox;

  static Serializer<TeeBox> get serializer => _$teeBoxSerializer;
}
