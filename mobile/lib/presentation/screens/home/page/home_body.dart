import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile/config/themes/app_colors.dart';
import 'package:mobile/config/themes/app_text_styles.dart';
import 'package:mobile/constants/constants.dart';
import 'package:mobile/presentation/components/app_bar_widget.dart';
import 'package:mobile/presentation/components/avatar.dart';
import 'package:mobile/presentation/routes/app_routes.dart';
import 'package:mobile/presentation/screens/home/widgets/card_option.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: const AppBarWidget(
        icon: Icons.menu,
      ),
      body: Column(
        children: [
          Text(Constants.parkingLot,
              style: AppTextStyles.montserratStyle.black20Bold),
          const SizedBox(
            height: 10,
          ),
          const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Avatar(
              imageUrl: '',
              widthAvatar: 80,
              heightAvatar: 80,
              radiusAvatar: 50,
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Name'),
                Text('Email'),
                Text('Number'),
              ],
            )
          ]),
          const SizedBox(
            height: 20,
          ),
          Wrap(
            spacing: 10,
            children: [
              CardOption(
                  name: Constants.notification,
                  icon: const Icon(Icons.circle_notifications,
                      color: AppColors.mountainMeadow, size: 40),
                  onPress: () {}),
              CardOption(
                  name: Constants.viewIncommingRides,
                  icon: const Icon(Icons.person_3_outlined,
                      color: AppColors.mountainMeadow, size: 40),
                  onPress: () {}),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Wrap(
            spacing: 10,
            children: [
              CardOption(
                  name: Constants.parkingHistory,
                  icon: const FaIcon(
                    FontAwesomeIcons.globe,
                    size: 40.0,
                    color: AppColors.mountainMeadow,
                  ),
                  onPress: () {
                    Navigator.pushNamed(context, AppRoutes.parkingHistory);
                  }),
              CardOption(
                  name: Constants.contactPolice,
                  icon: const FaIcon(
                    FontAwesomeIcons.addressBook,
                    size: 40.0,
                    color: AppColors.mountainMeadow,
                  ),
                  onPress: () {
                    Navigator.pushNamed(context, AppRoutes.contactPolice);
                  }),
            ],
          ),
        ],
      ),
      // bottomNavigationBar: CurvedNavigationBar(
      //   height: 60,
      //   backgroundColor: AppColors.white,
      //   color: AppColors.mountainMeadow,
      //   buttonBackgroundColor: AppColors.mountainMeadow,
      //   animationDuration: const Duration(milliseconds: 300),
      //   animationCurve: Curves.easeInOutCirc,
      //   letIndexChange: (value) => true,
      //   index: 2,
      //   onTap: (selectIndex) {
      //     // selectIndex = selectIndex;
      //     switch (selectIndex) {
      //       case 0:
      //         Navigator.pushNamed(context, AppRoutes.home);
      //         break;
      //       case 1:
      //         Navigator.pushNamed(context, AppRoutes.profile);
      //         break;
      //       case 2:
      //         Navigator.pushNamed(context, AppRoutes.qrCode);
      //         break;
      //       case 3:
      //         Navigator.pushNamed(context, AppRoutes.profile);
      //         break;
      //       case 4:
      //         Navigator.pushNamed(context, AppRoutes.profile);
      //         break;
      //       default:
      //     }
      //   },
      //   items: const [
      //     Icon(
      //       Icons.home,
      //       size: 30,
      //       color: AppColors.white,
      //     ),
      //     Icon(Icons.search, size: 30, color: AppColors.white),
      //     Icon(Icons.qr_code, size: 30, color: AppColors.white),
      //     Icon(Icons.category, size: 30, color: AppColors.white),
      //     Icon(Icons.person, size: 30, color: AppColors.white),
      //   ],
      // ),
    );
  }
}
