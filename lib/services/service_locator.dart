import 'package:albatrak/services/course_info_service.dart';
import 'package:albatrak/services/database_service.dart';
import "package:get_it/get_it.dart";

GetIt sl = new GetIt();

Future<void> setupServices() async {
  final db = new AlbaTrakDB();
  await db.setup();
  sl.registerSingleton<AlbaTrakDB>(db);
  sl.registerSingleton<CourseInfoService>(new CourseInfoService());
}
