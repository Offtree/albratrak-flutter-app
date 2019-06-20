// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Course> _$courseSerializer = new _$CourseSerializer();

class _$CourseSerializer implements StructuredSerializer<Course> {
  @override
  final Iterable<Type> types = const [Course, _$Course];
  @override
  final String wireName = 'Course';

  @override
  Iterable serialize(Serializers serializers, Course object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'phonenumber',
      serializers.serialize(object.phonenumber,
          specifiedType: const FullType(String)),
      'address',
      serializers.serialize(object.address,
          specifiedType: const FullType(Address)),
      'coordinates',
      serializers.serialize(object.coordinates,
          specifiedType: const FullType(GeoPoint)),
    ];

    return result;
  }

  @override
  Course deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CourseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phonenumber':
          result.phonenumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'address':
          result.address.replace(serializers.deserialize(value,
              specifiedType: const FullType(Address)) as Address);
          break;
        case 'coordinates':
          result.coordinates.replace(serializers.deserialize(value,
              specifiedType: const FullType(GeoPoint)) as GeoPoint);
          break;
      }
    }

    return result.build();
  }
}

class _$Course extends Course {
  @override
  final int id;
  @override
  final String name;
  @override
  final String phonenumber;
  @override
  final Address address;
  @override
  final GeoPoint coordinates;

  factory _$Course([void Function(CourseBuilder) updates]) =>
      (new CourseBuilder()..update(updates)).build();

  _$Course._(
      {this.id, this.name, this.phonenumber, this.address, this.coordinates})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Course', 'id');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('Course', 'name');
    }
    if (phonenumber == null) {
      throw new BuiltValueNullFieldError('Course', 'phonenumber');
    }
    if (address == null) {
      throw new BuiltValueNullFieldError('Course', 'address');
    }
    if (coordinates == null) {
      throw new BuiltValueNullFieldError('Course', 'coordinates');
    }
  }

  @override
  Course rebuild(void Function(CourseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CourseBuilder toBuilder() => new CourseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Course &&
        id == other.id &&
        name == other.name &&
        phonenumber == other.phonenumber &&
        address == other.address &&
        coordinates == other.coordinates;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), name.hashCode), phonenumber.hashCode),
            address.hashCode),
        coordinates.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Course')
          ..add('id', id)
          ..add('name', name)
          ..add('phonenumber', phonenumber)
          ..add('address', address)
          ..add('coordinates', coordinates))
        .toString();
  }
}

class CourseBuilder implements Builder<Course, CourseBuilder> {
  _$Course _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _phonenumber;
  String get phonenumber => _$this._phonenumber;
  set phonenumber(String phonenumber) => _$this._phonenumber = phonenumber;

  AddressBuilder _address;
  AddressBuilder get address => _$this._address ??= new AddressBuilder();
  set address(AddressBuilder address) => _$this._address = address;

  GeoPointBuilder _coordinates;
  GeoPointBuilder get coordinates =>
      _$this._coordinates ??= new GeoPointBuilder();
  set coordinates(GeoPointBuilder coordinates) =>
      _$this._coordinates = coordinates;

  CourseBuilder();

  CourseBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _phonenumber = _$v.phonenumber;
      _address = _$v.address?.toBuilder();
      _coordinates = _$v.coordinates?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Course other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Course;
  }

  @override
  void update(void Function(CourseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Course build() {
    _$Course _$result;
    try {
      _$result = _$v ??
          new _$Course._(
              id: id,
              name: name,
              phonenumber: phonenumber,
              address: address.build(),
              coordinates: coordinates.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'address';
        address.build();
        _$failedField = 'coordinates';
        coordinates.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Course', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
