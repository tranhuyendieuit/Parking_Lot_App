import 'package:flutter/material.dart';
import 'package:mobile/config/themes/app_colors.dart';
import 'package:mobile/config/themes/app_text_styles.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final IconData? icon;
  final VoidCallback? onPressLeftButton;
  final String? title;
  const AppBarWidget(
      {super.key, this.icon, this.onPressLeftButton, this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.white,
      leading: GestureDetector(
        child: Icon(icon ?? Icons.arrow_back_ios),
        onTap: () {
          onPressLeftButton ?? Navigator.pop(context);
        },
      ),
      title: Text(title ?? '',
          textAlign: TextAlign.center,
          style: AppTextStyles.montserratStyle.black20Bold),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
