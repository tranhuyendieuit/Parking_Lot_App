import 'package:flutter/material.dart';
import 'package:mobile/presentation/routes/app_routes.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: AppRoutes.getInitialRoute(),
    routes: AppRoutes.getRoutes(),
    // home: const HomePage(),
    debugShowCheckedModeBanner: true,
  ));
}
