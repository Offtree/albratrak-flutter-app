// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Paginated> _$paginatedSerializer = new _$PaginatedSerializer();

class _$PaginatedSerializer implements StructuredSerializer<Paginated> {
  @override
  final Iterable<Type> types = const [Paginated, _$Paginated];
  @override
  final String wireName = 'Paginated';

  @override
  Iterable serialize(Serializers serializers, Paginated object,
      {FullType specifiedType = FullType.unspecified}) {
    final isUnderspecified =
        specifiedType.isUnspecified || specifiedType.parameters.isEmpty;
    if (!isUnderspecified) serializers.expectBuilder(specifiedType);
    final parameterT =
        isUnderspecified ? FullType.object : specifiedType.parameters[0];

    final result = <Object>[
      'resources',
      serializers.serialize(object.resources,
          specifiedType: new FullType(BuiltList, [parameterT])),
    ];

    return result;
  }

  @override
  Paginated deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final isUnderspecified =
        specifiedType.isUnspecified || specifiedType.parameters.isEmpty;
    if (!isUnderspecified) serializers.expectBuilder(specifiedType);
    final parameterT =
        isUnderspecified ? FullType.object : specifiedType.parameters[0];

    final result = isUnderspecified
        ? new PaginatedBuilder<Object>()
        : serializers.newBuilder(specifiedType) as PaginatedBuilder;

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'resources':
          result.resources.replace(serializers.deserialize(value,
                  specifiedType: new FullType(BuiltList, [parameterT]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$Paginated<T> extends Paginated<T> {
  @override
  final BuiltList<T> resources;

  factory _$Paginated([void Function(PaginatedBuilder<T>) updates]) =>
      (new PaginatedBuilder<T>()..update(updates)).build();

  _$Paginated._({this.resources}) : super._() {
    if (resources == null) {
      throw new BuiltValueNullFieldError('Paginated', 'resources');
    }
    if (T == dynamic) {
      throw new BuiltValueMissingGenericsError('Paginated', 'T');
    }
  }

  @override
  Paginated<T> rebuild(void Function(PaginatedBuilder<T>) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PaginatedBuilder<T> toBuilder() => new PaginatedBuilder<T>()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Paginated && resources == other.resources;
  }

  @override
  int get hashCode {
    return $jf($jc(0, resources.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Paginated')
          ..add('resources', resources))
        .toString();
  }
}

class PaginatedBuilder<T>
    implements Builder<Paginated<T>, PaginatedBuilder<T>> {
  _$Paginated<T> _$v;

  ListBuilder<T> _resources;
  ListBuilder<T> get resources => _$this._resources ??= new ListBuilder<T>();
  set resources(ListBuilder<T> resources) => _$this._resources = resources;

  PaginatedBuilder();

  PaginatedBuilder<T> get _$this {
    if (_$v != null) {
      _resources = _$v.resources?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Paginated<T> other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Paginated<T>;
  }

  @override
  void update(void Function(PaginatedBuilder<T>) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Paginated<T> build() {
    _$Paginated<T> _$result;
    try {
      _$result = _$v ?? new _$Paginated<T>._(resources: resources.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'resources';
        resources.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Paginated', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
