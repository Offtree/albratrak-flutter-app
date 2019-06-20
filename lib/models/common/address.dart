import 'dart:convert';

import 'package:albatrak/models/serializers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'address.g.dart';

abstract class Address implements Built<Address, AddressBuilder> {
  String get street;
  String get city;
  String get state;
  String get zip;
  String get country;

  Address._();

  factory Address([updates(AddressBuilder b)]) = _$Address;

  String toJson() {
    return json.encode(serializers.serializeWith(Address.serializer, this));
  }

  static Address fromJson(String jsonString) {
    return serializers.deserializeWith(
        Address.serializer, json.decode(jsonString));
  }

  static Serializer<Address> get serializer => _$addressSerializer;
}
