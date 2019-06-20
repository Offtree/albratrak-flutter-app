import 'package:built_value/built_value.dart';

part 'api_request.g.dart';

abstract class ApiRequest<T>
    implements Built<ApiRequest<T>, ApiRequestBuilder<T>> {
  /// If the api request is currently loading
  bool get loading;

  /// If the api request has failec
  bool get error;

  @nullable
  T get data;

  ApiRequest._();

  factory ApiRequest([updates(ApiRequestBuilder<T> b)]) = _$ApiRequest<T>;
}
