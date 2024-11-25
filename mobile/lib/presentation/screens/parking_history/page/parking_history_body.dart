import 'package:flutter/material.dart';
import 'package:mobile/config/themes/app_colors.dart';
import 'package:mobile/config/themes/app_text_styles.dart';
import 'package:mobile/constants/constants.dart';
import 'package:mobile/presentation/components/app_bar_widget.dart';
import 'package:mobile/presentation/components/custom_button.dart';

class ParkingHistoryBody extends StatelessWidget {
  final List<Map<String, String>> rides = [
    {
      "name": "Amanda",
      "space": "Space 4c",
      "id": "CPA-0129",
      "checkIn": "11:00 am",
      "checkOut": "05:00 pm",
      "specifications": "None",
    },
    {
      "name": "Amanda",
      "space": "Space 4c",
      "id": "CPA-0129",
      "checkIn": "11:00 am",
      "checkOut": "05:00 pm",
      "specifications": "None",
    },
    {
      "name": "Amanda",
      "space": "Space 4c",
      "id": "CPA-0129",
      "checkIn": "11:00 am",
      "checkOut": "05:00 pm",
      "specifications": "None",
    },
  ];

  ParkingHistoryBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: const AppBarWidget(
        title: Constants.parkingHistory,
      ),
      body: ListView.builder(
        itemCount: rides.length,
        itemBuilder: (context, index) {
          final ride = rides[index];
          return Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Card(
              color: AppColors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              elevation: 6,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          Constants.plateNumber,
                          style: AppTextStyles
                              .montserratStyle.semiBold12MountainMeadow,
                        ),
                        Text(
                          "${ride["id"]}",
                          style: AppTextStyles
                              .montserratStyle.semiBold12MountainMeadow,
                        )
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          Constants.checkInTime,
                          style: AppTextStyles.montserratStyle.regular12Black,
                        ),
                        Text(
                          ride["checkIn"]!,
                          style: AppTextStyles.montserratStyle.bold12Black,
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          Constants.checkOutTime,
                          style: AppTextStyles.montserratStyle.regular12Black,
                        ),
                        Text(ride["checkOut"]!,
                            style: AppTextStyles.montserratStyle.bold12Black),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(20),
          child: CustomButton(
            text: Constants.backToHome,
            onTap: () => Navigator.pop(context),
          )),
    );
  }
}
