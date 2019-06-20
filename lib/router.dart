import 'package:albatrak/providers/course_provider/course_provider.dart';
import 'package:albatrak/providers/nearby_course_provider.dart';
import 'package:albatrak/widgets/pages/course_description_page.dart';
import 'package:albatrak/widgets/pages/hole_description_page.dart';
import 'package:albatrak/widgets/pages/landing_page.dart';
import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:provider/provider.dart';

class AlbaTrakRouter {
  static Router router = Router();

  static Handler _homeHandler = Handler(
    handlerFunc: (
      BuildContext context,
      Map<String, dynamic> params,
    ) =>
        ChangeNotifierProvider<NearybyCourseProvider>(
          builder: (context) => new NearybyCourseProvider(),
          child: LandingPage(),
        ),
  );

  static Handler _courseHandler = Handler(handlerFunc: (
    BuildContext context,
    Map<String, dynamic> params,
  ) {
    return ChangeNotifierProvider<CourseProvider>(
      builder: (context) => new CourseProvider(params['courseId'][0]),
      child: CourseDescriptionPage(),
    );
  });

  static Handler _holeHandler = Handler(handlerFunc: (
    BuildContext context,
    Map<String, dynamic> params,
  ) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CourseProvider>(
          builder: (context) => new CourseProvider(params['courseId'][0]),
          child: CourseDescriptionPage(),
        ),
        // ChangeNotifierProvider<HoleProvider>(
        //   builder: (context) => new CourseProvider(params['courseId'][0]),
        //   child: CourseDescriptionPage(),
        // )
      ],
      child: HoleDescriptionPage(),
    );
  });

  static void setupRouter() {
    // General Routes
    router.define(
      '/',
      handler: _homeHandler,
    );

    // Course Detail
    router.define(
      '/course/:courseId',
      handler: _courseHandler,
    );

    // Explore a golf course
    router.define(
      '/course/:courseId/hole/:holeId',
      handler: _holeHandler,
    );
  }
}
