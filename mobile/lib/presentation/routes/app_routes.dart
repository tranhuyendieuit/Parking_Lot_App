import 'package:flutter/material.dart';
import 'package:mobile/presentation/screens/auth/login/page/login_page.dart';
import 'package:mobile/presentation/screens/auth/register/pages/register_page.dart';
import 'package:mobile/presentation/screens/contact_police/page/contact_police_page.dart';
import 'package:mobile/presentation/screens/home/page/home_page.dart';
import 'package:mobile/presentation/screens/parking_history/page/parking_history_page.dart';
import 'package:mobile/presentation/screens/splash/pages/splash_page.dart';
import 'package:mobile/presentation/screens/welcome/page/welcome_page.dart';

class AppRoutes {
  static const String parkingHistory = '/parkingHistory';
  static const String contactPolice = '/contactPolice';
  static const String home = '/home';

  static getInitialRoute() {
    return '/';
  }

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      '/': (BuildContext context) => const SplashPage(),
      '/welcome': (BuildContext context) => const WelcomePage(),
      '/register': (BuildContext context) => const RegisterPage(),
      '/login': (BuildContext context) => const LoginPage(),
      home: (BuildContext context) => const HomePage(),
      parkingHistory: (BuildContext context) => const ParkingHistoryPage(),
      contactPolice: (BuildContext context) => const ContactPolicePage(),
    };
  }
}
