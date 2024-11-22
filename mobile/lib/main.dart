import 'package:flutter/material.dart';
import 'package:mobile/presentation/routes/app_routes.dart';

import 'data/data_sources/local/share_preferences.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await SharedPrefer().init();
  runApp(MaterialApp(
    initialRoute: AppRoutes.getInitialRoute(),
    routes: AppRoutes.getRoutes(),
    // home: const HomePage(),
    debugShowCheckedModeBanner: true,
  ));
}
