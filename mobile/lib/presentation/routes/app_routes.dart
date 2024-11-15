import 'package:flutter/material.dart';
import 'package:mobile/presentation/screens/auth/login/page/login_page.dart';
import 'package:mobile/presentation/screens/auth/register/pages/register_page.dart';
import 'package:mobile/presentation/screens/profile/bloc/presentation/privacy_policy/page/privacy_policy_page.dart';
import 'package:mobile/presentation/screens/profile/page/profile_page.dart';
import 'package:mobile/presentation/screens/splash/pages/splash_page.dart';
import 'package:mobile/presentation/screens/welcome/page/welcome_page.dart';

class AppRoutes {
  static getInitialRoute() {
    return '/';
  }

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      '/': (BuildContext context) => const SplashPage(),
      '/welcome': (BuildContext context) => const WelcomePage(),
      '/register': (BuildContext context) => const RegisterPage(),
      '/login': (BuildContext context) => const LoginPage(),
      '/profile': (BuildContext context) => const ProfilePage(),
      '/privacy-policy': (BuildContext context) => const PrivacyPolicyPage(),
    };
  }
}
