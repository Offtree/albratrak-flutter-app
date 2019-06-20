// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teebox.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TeeBox> _$teeBoxSerializer = new _$TeeBoxSerializer();

class _$TeeBoxSerializer implements StructuredSerializer<TeeBox> {
  @override
  final Iterable<Type> types = const [TeeBox, _$TeeBox];
  @override
  final String wireName = 'TeeBox';

  @override
  Iterable serialize(Serializers serializers, TeeBox object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'courseid',
      serializers.serialize(object.courseid,
          specifiedType: const FullType(int)),
    ];
    if (object.teeboxtype != null) {
      result
        ..add('teeboxtype')
        ..add(serializers.serialize(object.teeboxtype,
            specifiedType: const FullType(String)));
    }
    if (object.color != null) {
      result
        ..add('color')
        ..add(serializers.serialize(object.color,
            specifiedType: const FullType(String)));
    }
    if (object.slope != null) {
      result
        ..add('slope')
        ..add(serializers.serialize(object.slope,
            specifiedType: const FullType(double)));
    }
    if (object.rating != null) {
      result
        ..add('rating')
        ..add(serializers.serialize(object.rating,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  TeeBox deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TeeBoxBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'courseid':
          result.courseid = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'teeboxtype':
          result.teeboxtype = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'color':
          result.color = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'slope':
          result.slope = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$TeeBox extends TeeBox {
  @override
  final int courseid;
  @override
  final String teeboxtype;
  @override
  final String color;
  @override
  final double slope;
  @override
  final double rating;

  factory _$TeeBox([void Function(TeeBoxBuilder) updates]) =>
      (new TeeBoxBuilder()..update(updates)).build();

  _$TeeBox._(
      {this.courseid, this.teeboxtype, this.color, this.slope, this.rating})
      : super._() {
    if (courseid == null) {
      throw new BuiltValueNullFieldError('TeeBox', 'courseid');
    }
  }

  @override
  TeeBox rebuild(void Function(TeeBoxBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TeeBoxBuilder toBuilder() => new TeeBoxBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TeeBox &&
        courseid == other.courseid &&
        teeboxtype == other.teeboxtype &&
        color == other.color &&
        slope == other.slope &&
        rating == other.rating;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, courseid.hashCode), teeboxtype.hashCode),
                color.hashCode),
            slope.hashCode),
        rating.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TeeBox')
          ..add('courseid', courseid)
          ..add('teeboxtype', teeboxtype)
          ..add('color', color)
          ..add('slope', slope)
          ..add('rating', rating))
        .toString();
  }
}

class TeeBoxBuilder implements Builder<TeeBox, TeeBoxBuilder> {
  _$TeeBox _$v;

  int _courseid;
  int get courseid => _$this._courseid;
  set courseid(int courseid) => _$this._courseid = courseid;

  String _teeboxtype;
  String get teeboxtype => _$this._teeboxtype;
  set teeboxtype(String teeboxtype) => _$this._teeboxtype = teeboxtype;

  String _color;
  String get color => _$this._color;
  set color(String color) => _$this._color = color;

  double _slope;
  double get slope => _$this._slope;
  set slope(double slope) => _$this._slope = slope;

  double _rating;
  double get rating => _$this._rating;
  set rating(double rating) => _$this._rating = rating;

  TeeBoxBuilder();

  TeeBoxBuilder get _$this {
    if (_$v != null) {
      _courseid = _$v.courseid;
      _teeboxtype = _$v.teeboxtype;
      _color = _$v.color;
      _slope = _$v.slope;
      _rating = _$v.rating;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TeeBox other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TeeBox;
  }

  @override
  void update(void Function(TeeBoxBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TeeBox build() {
    final _$result = _$v ??
        new _$TeeBox._(
            courseid: courseid,
            teeboxtype: teeboxtype,
            color: color,
            slope: slope,
            rating: rating);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
