// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geo_point.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GeoPoint> _$geoPointSerializer = new _$GeoPointSerializer();

class _$GeoPointSerializer implements StructuredSerializer<GeoPoint> {
  @override
  final Iterable<Type> types = const [GeoPoint, _$GeoPoint];
  @override
  final String wireName = 'GeoPoint';

  @override
  Iterable serialize(Serializers serializers, GeoPoint object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'lat',
      serializers.serialize(object.lat, specifiedType: const FullType(double)),
      'long',
      serializers.serialize(object.long, specifiedType: const FullType(double)),
    ];
    if (object.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GeoPoint deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GeoPointBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'lat':
          result.lat = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'long':
          result.long = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GeoPoint extends GeoPoint {
  @override
  final double lat;
  @override
  final double long;
  @override
  final String type;

  factory _$GeoPoint([void Function(GeoPointBuilder) updates]) =>
      (new GeoPointBuilder()..update(updates)).build();

  _$GeoPoint._({this.lat, this.long, this.type}) : super._() {
    if (lat == null) {
      throw new BuiltValueNullFieldError('GeoPoint', 'lat');
    }
    if (long == null) {
      throw new BuiltValueNullFieldError('GeoPoint', 'long');
    }
  }

  @override
  GeoPoint rebuild(void Function(GeoPointBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GeoPointBuilder toBuilder() => new GeoPointBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GeoPoint &&
        lat == other.lat &&
        long == other.long &&
        type == other.type;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, lat.hashCode), long.hashCode), type.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GeoPoint')
          ..add('lat', lat)
          ..add('long', long)
          ..add('type', type))
        .toString();
  }
}

class GeoPointBuilder implements Builder<GeoPoint, GeoPointBuilder> {
  _$GeoPoint _$v;

  double _lat;
  double get lat => _$this._lat;
  set lat(double lat) => _$this._lat = lat;

  double _long;
  double get long => _$this._long;
  set long(double long) => _$this._long = long;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  GeoPointBuilder();

  GeoPointBuilder get _$this {
    if (_$v != null) {
      _lat = _$v.lat;
      _long = _$v.long;
      _type = _$v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GeoPoint other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GeoPoint;
  }

  @override
  void update(void Function(GeoPointBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GeoPoint build() {
    final _$result = _$v ?? new _$GeoPoint._(lat: lat, long: long, type: type);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
