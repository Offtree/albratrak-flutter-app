// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiRequest<T> extends ApiRequest<T> {
  @override
  final bool loading;
  @override
  final bool error;
  @override
  final T data;

  factory _$ApiRequest([void Function(ApiRequestBuilder<T>) updates]) =>
      (new ApiRequestBuilder<T>()..update(updates)).build();

  _$ApiRequest._({this.loading, this.error, this.data}) : super._() {
    if (loading == null) {
      throw new BuiltValueNullFieldError('ApiRequest', 'loading');
    }
    if (error == null) {
      throw new BuiltValueNullFieldError('ApiRequest', 'error');
    }
    if (T == dynamic) {
      throw new BuiltValueMissingGenericsError('ApiRequest', 'T');
    }
  }

  @override
  ApiRequest<T> rebuild(void Function(ApiRequestBuilder<T>) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiRequestBuilder<T> toBuilder() => new ApiRequestBuilder<T>()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiRequest &&
        loading == other.loading &&
        error == other.error &&
        data == other.data;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, loading.hashCode), error.hashCode), data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ApiRequest')
          ..add('loading', loading)
          ..add('error', error)
          ..add('data', data))
        .toString();
  }
}

class ApiRequestBuilder<T>
    implements Builder<ApiRequest<T>, ApiRequestBuilder<T>> {
  _$ApiRequest<T> _$v;

  bool _loading;
  bool get loading => _$this._loading;
  set loading(bool loading) => _$this._loading = loading;

  bool _error;
  bool get error => _$this._error;
  set error(bool error) => _$this._error = error;

  T _data;
  T get data => _$this._data;
  set data(T data) => _$this._data = data;

  ApiRequestBuilder();

  ApiRequestBuilder<T> get _$this {
    if (_$v != null) {
      _loading = _$v.loading;
      _error = _$v.error;
      _data = _$v.data;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiRequest<T> other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ApiRequest<T>;
  }

  @override
  void update(void Function(ApiRequestBuilder<T>) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ApiRequest<T> build() {
    final _$result = _$v ??
        new _$ApiRequest<T>._(loading: loading, error: error, data: data);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
