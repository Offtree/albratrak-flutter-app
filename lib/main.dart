import 'package:albatrak/router.dart';
import 'package:albatrak/services/service_locator.dart';
import 'package:flutter/material.dart';

void main() async {
  await setupServices();
  AlbaTrakRouter.setupRouter();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AlbaTrak - Golf Tracker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      onGenerateRoute: AlbaTrakRouter.router.generator,
    );
  }
}
