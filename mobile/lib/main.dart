import 'package:flutter/material.dart';
import 'package:mobile/presentation/routes/app_routes.dart';
import 'package:mobile/presentation/screens/contact_police/page/contact_police_body.dart';
import 'package:mobile/presentation/screens/home/page/home_page.dart';
import 'package:mobile/presentation/screens/parking_history/page/parking_history_page.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: AppRoutes.getInitialRoute(),
    routes: AppRoutes.getRoutes(),
    debugShowCheckedModeBanner: true,
  ));
}
