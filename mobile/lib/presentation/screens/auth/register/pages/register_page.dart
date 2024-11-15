import 'package:flutter/material.dart';
import 'package:mobile/config/themes/app_colors.dart';
import 'package:mobile/presentation/screens/auth/register/pages/register_body.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});
  static const routeName = '/register-page';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColors.white,
      body: RegisterBody(),
    );
  }
}