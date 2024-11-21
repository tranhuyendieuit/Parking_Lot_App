import 'package:flutter/material.dart';
import 'package:mobile/config/themes/app_colors.dart';
import 'package:mobile/config/themes/app_text_styles.dart';
import 'package:mobile/constants/constants.dart';
import 'package:mobile/presentation/components/app_bar_widget.dart';

class PrivacyPolicyBody extends StatelessWidget {
  const PrivacyPolicyBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: const AppBarWidget(
        title: Constants.privacy,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Text(
                Constants.privacy,
                style: AppTextStyles.montserratStyle.bold14Black,
              ),
              const SizedBox(height: 10),
              Text(
                Constants.example,
                style: AppTextStyles.montserratStyle.regular12Black,
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
