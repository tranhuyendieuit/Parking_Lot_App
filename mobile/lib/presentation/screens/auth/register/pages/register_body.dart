import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mobile/config/themes/app_colors.dart';
import 'package:mobile/config/themes/app_icons.dart';
import 'package:mobile/config/themes/app_text_styles.dart';
import 'package:mobile/constants/constants.dart';
import 'package:mobile/presentation/components/custom_button.dart';
import 'package:mobile/presentation/components/custom_edit_text.dart';
import 'package:mobile/presentation/components/custom_logo.dart';

class RegisterBody extends StatefulWidget {
  const RegisterBody({super.key});

  @override
  State<RegisterBody> createState() => _RegisterBodyState();
}

class _RegisterBodyState extends State<RegisterBody> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: AppColors.white,
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 48),
                  const CustomLogo(),
                  const SizedBox(height: 48),
                  const CustomEditText(
                    title: Constants.userName,
                    hintText: Constants.enterYourUserName,
                  ),
                  const SizedBox(height: 16),
                  const CustomEditText(
                    title: Constants.password,
                    hintText: Constants.enterYourPassword,
                    isPasswordInput: true,
                    // controller: passwordController,
                    // isPassword: true,
                    // isPasswordShown: isPasswordShown,
                    // onTogglePassword: () {
                    //   setState(() {
                    //     isPasswordShown = !isPasswordShown;
                    //   });
                    // },
                  ),
                  const SizedBox(height: 16),
                  const CustomEditText(
                    title: Constants.confirmPassword,
                    hintText: Constants.confirmYourPassword,
                    isPasswordInput: true,
                    // controller: passwordController,
                    // isPassword: true,
                    // isPasswordShown: isPasswordShown,
                    // onTogglePassword: () {
                    //   setState(() {
                    //     isPasswordShown = !isPasswordShown;
                    //   });
                    // },
                  ),
                  const SizedBox(height: 20),
                  CustomButton(
                    text: Constants.nextStep,
                    onTap: () {
                      Navigator.pushNamed(context, '/step-two');
                    },
                    height: 50,
                    width: 260,
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      const Expanded(
                          child: Divider(color: AppColors.cadetGrey)),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(Constants.orRegisterWith,
                            style:
                                AppTextStyles.montserratStyle.regular10DimGray),
                      ),
                      const Expanded(
                          child: Divider(color: AppColors.cadetGrey)),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: IconButton(
                      icon: Image.asset(AppIcons.google.svgAssetPath),
                      iconSize: 14,
                      onPressed: () {
                        // Handle Google login
                      },
                    ),
                  ),
                  const SizedBox(height: 30),
                  RichText(
                    text: TextSpan(
                      text: Constants.alreadyHaveAnAccount,
                      style: AppTextStyles.montserratStyle.regular12DimGray,
                      children: [
                        TextSpan(
                          text: Constants.login,
                          style: AppTextStyles.montserratStyle.bold12Black,
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushNamed(context, '/login');
                            },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
