// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'holes.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Hole> _$holeSerializer = new _$HoleSerializer();

class _$HoleSerializer implements StructuredSerializer<Hole> {
  @override
  final Iterable<Type> types = const [Hole, _$Hole];
  @override
  final String wireName = 'Hole';

  @override
  Iterable serialize(Serializers serializers, Hole object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'courseid',
      serializers.serialize(object.courseid,
          specifiedType: const FullType(int)),
      'number',
      serializers.serialize(object.number, specifiedType: const FullType(int)),
      'flagcoords',
      serializers.serialize(object.flagcoords,
          specifiedType: const FullType(GeoPoint)),
      'rotation',
      serializers.serialize(object.rotation,
          specifiedType: const FullType(double)),
      'vectors',
      serializers.serialize(object.vectors,
          specifiedType:
              const FullType(BuiltList, const [const FullType(GeoPoint)])),
    ];

    return result;
  }

  @override
  Hole deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HoleBuilder();

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
        case 'courseid':
          result.courseid = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'number':
          result.number = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'flagcoords':
          result.flagcoords.replace(serializers.deserialize(value,
              specifiedType: const FullType(GeoPoint)) as GeoPoint);
          break;
        case 'rotation':
          result.rotation = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'vectors':
          result.vectors.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(GeoPoint)])) as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$Hole extends Hole {
  @override
  final int id;
  @override
  final int courseid;
  @override
  final int number;
  @override
  final GeoPoint flagcoords;
  @override
  final double rotation;
  @override
  final BuiltList<GeoPoint> vectors;

  factory _$Hole([void Function(HoleBuilder) updates]) =>
      (new HoleBuilder()..update(updates)).build();

  _$Hole._(
      {this.id,
      this.courseid,
      this.number,
      this.flagcoords,
      this.rotation,
      this.vectors})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Hole', 'id');
    }
    if (courseid == null) {
      throw new BuiltValueNullFieldError('Hole', 'courseid');
    }
    if (number == null) {
      throw new BuiltValueNullFieldError('Hole', 'number');
    }
    if (flagcoords == null) {
      throw new BuiltValueNullFieldError('Hole', 'flagcoords');
    }
    if (rotation == null) {
      throw new BuiltValueNullFieldError('Hole', 'rotation');
    }
    if (vectors == null) {
      throw new BuiltValueNullFieldError('Hole', 'vectors');
    }
  }

  @override
  Hole rebuild(void Function(HoleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HoleBuilder toBuilder() => new HoleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Hole &&
        id == other.id &&
        courseid == other.courseid &&
        number == other.number &&
        flagcoords == other.flagcoords &&
        rotation == other.rotation &&
        vectors == other.vectors;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, id.hashCode), courseid.hashCode),
                    number.hashCode),
                flagcoords.hashCode),
            rotation.hashCode),
        vectors.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Hole')
          ..add('id', id)
          ..add('courseid', courseid)
          ..add('number', number)
          ..add('flagcoords', flagcoords)
          ..add('rotation', rotation)
          ..add('vectors', vectors))
        .toString();
  }
}

class HoleBuilder implements Builder<Hole, HoleBuilder> {
  _$Hole _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  int _courseid;
  int get courseid => _$this._courseid;
  set courseid(int courseid) => _$this._courseid = courseid;

  int _number;
  int get number => _$this._number;
  set number(int number) => _$this._number = number;

  GeoPointBuilder _flagcoords;
  GeoPointBuilder get flagcoords =>
      _$this._flagcoords ??= new GeoPointBuilder();
  set flagcoords(GeoPointBuilder flagcoords) => _$this._flagcoords = flagcoords;

  double _rotation;
  double get rotation => _$this._rotation;
  set rotation(double rotation) => _$this._rotation = rotation;

  ListBuilder<GeoPoint> _vectors;
  ListBuilder<GeoPoint> get vectors =>
      _$this._vectors ??= new ListBuilder<GeoPoint>();
  set vectors(ListBuilder<GeoPoint> vectors) => _$this._vectors = vectors;

  HoleBuilder();

  HoleBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _courseid = _$v.courseid;
      _number = _$v.number;
      _flagcoords = _$v.flagcoords?.toBuilder();
      _rotation = _$v.rotation;
      _vectors = _$v.vectors?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Hole other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Hole;
  }

  @override
  void update(void Function(HoleBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Hole build() {
    _$Hole _$result;
    try {
      _$result = _$v ??
          new _$Hole._(
              id: id,
              courseid: courseid,
              number: number,
              flagcoords: flagcoords.build(),
              rotation: rotation,
              vectors: vectors.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'flagcoords';
        flagcoords.build();

        _$failedField = 'vectors';
        vectors.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Hole', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
