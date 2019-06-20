import 'package:albatrak/models/common/address.dart';
import 'package:albatrak/models/common/geo_point.dart';
import 'package:albatrak/models/common/paginated.dart';
import 'package:albatrak/models/course/course.dart';
import 'package:albatrak/models/course/holes.dart';
import 'package:albatrak/models/course/teebox.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  Address,
  GeoPoint,
  Paginated,
  Course,
  TeeBox,
  Hole,
])
final Serializers serializers = (_$serializers.toBuilder()
      ..addPlugin(
        StandardJsonPlugin(),
      ))
    .build();
