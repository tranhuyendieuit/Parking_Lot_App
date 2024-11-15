import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 48),
                const CustomLogo(),
                const SizedBox(height: 48),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CustomEditText(
                      title: Constants.userName,
                      hintText: Constants.enterYourUserName,
                    ),
                    const SizedBox(height: 16),
                    const CustomEditText(
                      title: Constants.password,
                      hintText: Constants.enterYourPassword,
                      isPasswordInput: true,
                    ),
                    const SizedBox(height: 16),
                    const CustomEditText(
                      title: Constants.confirmPassword,
                      hintText: Constants.confirmYourPassword,
                      isPasswordInput: true,
                    ),
                    const SizedBox(height: 20),
                    const Row(
                      children: [
                        Expanded(
                          child: CustomEditText(
                            title: Constants.firstName,
                            hintText: Constants.yourFirstName,
                            suffix: Icon(Icons.emoji_emotions_outlined,
                                color: AppColors.mountainMeadow, size: 16),
                          ),
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          child: CustomEditText(
                            title: Constants.lastName,
                            hintText: Constants.yourLastName,
                            suffix: Icon(Icons.emoji_emotions_outlined,
                                color: AppColors.mountainMeadow, size: 16),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    const CustomEditText(
                      title: Constants.email,
                      hintText: Constants.enterYourEmail,
                      suffix: Icon(Icons.email_outlined,
                          color: AppColors.mountainMeadow, size: 16),
                    ),
                    const SizedBox(height: 16),
                    const CustomEditText(
                      title: Constants.mobileNumber,
                      hintText: Constants.enterYourMobileNumber,
                      suffix: Icon(Icons.phone,
                          color: AppColors.mountainMeadow, size: 16),
                    ),
                    const SizedBox(height: 16),
                    const CustomEditText(
                      title: Constants.vehicleBrand,
                      hintText: Constants.enterYourVehicleBrand,
                      suffix: Icon(FontAwesomeIcons.motorcycle,
                          color: AppColors.mountainMeadow, size: 16),
                    ),
                    const SizedBox(height: 16),
                    const CustomEditText(
                      title: Constants.vehicleModel,
                      hintText: Constants.enterYourVehicleModel,
                      suffix: Icon(FontAwesomeIcons.motorcycle,
                          color: AppColors.mountainMeadow, size: 16),
                    ),
                    const SizedBox(height: 16),
                    const CustomEditText(
                      title: Constants.vehiclePlate,
                      hintText: Constants.enterYourVehiclePlate,
                      suffix: Icon(
                        FontAwesomeIcons.motorcycle,
                        color: AppColors.mountainMeadow,
                        size: 16,
                      ),
                    ),
                    const SizedBox(height: 20),
                    CustomButton(
                      text: Constants.register,
                      onTap: () {
                        Navigator.pushNamed(context, '/step-two');
                      },
                      height: 50,
                      width: 260,
                    ),
                  ],
                ),
                const SizedBox(height: 16),

                // Fixed bottom part
                Row(
                  children: [
                    const Expanded(child: Divider(color: AppColors.cadetGrey)),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(Constants.orRegisterWith,
                          style:
                              AppTextStyles.montserratStyle.regular10DimGray),
                    ),
                    const Expanded(child: Divider(color: AppColors.cadetGrey)),
                  ],
                ),
                const SizedBox(height: 5),
                IconButton(
                  icon: Image.asset(
                    AppIcons.google.pngAssetPath,
                    width: 20,
                    height: 20,
                  ),
                  iconSize: 14,
                  onPressed: () {},
                ),
                const SizedBox(height: 16),
                RichText(
                  text: TextSpan(
                    text: Constants.alreadyHaveAnAccount,
                    style: AppTextStyles.montserratStyle.regular13DimGray,
                    children: [
                      TextSpan(
                        text: Constants.login,
                        style: AppTextStyles.montserratStyle.bold13Black,
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pushNamed(context, '/login');
                          },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
