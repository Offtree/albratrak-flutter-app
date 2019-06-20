import 'dart:convert';
import 'package:albatrak/models/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'paginated.g.dart';

abstract class Paginated<T>
    implements Built<Paginated<T>, PaginatedBuilder<T>> {
  BuiltList<T> get resources;

  Paginated._();

  factory Paginated([updates(PaginatedBuilder<T> b)]) = _$Paginated<T>;

  String toJson() {
    return json.encode(serializers.serializeWith(Paginated.serializer, this));
  }

  static Paginated fromJson(String jsonString) {
    return serializers.deserializeWith(
        Paginated.serializer, json.decode(jsonString));
  }

  static Serializer<Paginated> get serializer => _$paginatedSerializer;
}
