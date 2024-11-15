import 'package:flutter/material.dart';
import 'package:mobile/config/themes/app_colors.dart';
import 'package:mobile/config/themes/app_text_styles.dart';
import 'package:mobile/constants/constants.dart';
import 'package:mobile/presentation/components/custom_button.dart';
import 'package:mobile/presentation/screens/profile/widgets/profile_option.dart';

class ProfileBody extends StatefulWidget {
  const ProfileBody({super.key});

  @override
  State<ProfileBody> createState() => _ProfileBodyState();
}

class _ProfileBodyState extends State<ProfileBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        title: const Text(Constants.profile),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(height: 10),
              const CircleAvatar(
                radius: 40,
                backgroundImage:
                    NetworkImage('https://via.placeholder.com/150'),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: CircleAvatar(
                    radius: 12,
                    backgroundColor: AppColors.mountainMeadow,
                    child: Icon(
                      Icons.edit,
                      size: 15,
                      color: AppColors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Text('Nicolas Adams',
                  style: AppTextStyles.montserratStyle.bold18Black),
              const Text(
                'nicolasadams@gmail.com',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 16),
              CustomButton(
                onTap: () {},
                width: 200,
                height: 50,
                text: Constants.editProfile,
                textStyle: AppTextStyles.montserratStyle.bold12White,
              ),
              const SizedBox(height: 24),
              ProfileOption(
                icon: Icons.privacy_tip_outlined,
                text: Constants.privacy,
                onTap: () {
                  Navigator.pushNamed(context, '/privacy-policy');
                },
              ),
              const ProfileOption(
                  icon: Icons.history, text: Constants.purchaseHistory),
              const ProfileOption(
                  icon: Icons.help_outline, text: Constants.helpSupport),
              const ProfileOption(
                  icon: Icons.settings, text: Constants.settings),
              const ProfileOption(
                  icon: Icons.logout_outlined, text: Constants.logout),
            ],
          ),
        ),
      ),
    );
  }
}
