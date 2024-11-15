import 'package:flutter/material.dart';
import 'package:mobile/config/themes/app_colors.dart';
import 'package:mobile/config/themes/app_text_styles.dart';
import 'package:mobile/constants/constants.dart';
import 'package:mobile/data/dummy_data.dart';
import 'package:mobile/presentation/components/app_bar_widget.dart';
import 'package:mobile/utils/format_time.dart';

class ParkingHistoryBody extends StatefulWidget {
  const ParkingHistoryBody({super.key});

  @override
  State<ParkingHistoryBody> createState() => _ParkingHistoryBodyState();
}

class _ParkingHistoryBodyState extends State<ParkingHistoryBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: const AppBarWidget(
        title: Constants.parkingHistory,
      ),
      body: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: 10,
              ),
              Expanded(
                  flex: 1,
                  child: Text(
                    Constants.vehicle,
                    style: AppTextStyles.montserratStyle.medium10Black,
                    textAlign: TextAlign.left,
                  )),
              Expanded(
                  flex: 1,
                  child: Text(
                    Constants.checkIn,
                    style: AppTextStyles.montserratStyle.medium10Black,
                    textAlign: TextAlign.left,
                  )),
              Expanded(
                flex: 1,
                child: Text(
                  Constants.checkOut,
                  style: AppTextStyles.montserratStyle.medium10Black,
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 6,
          ),
          const Divider(
            height: 1,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: checkParks.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                            flex: 1,
                            child: Text(checkParks[index].vehicle,
                                textAlign: TextAlign.left)),
                        Expanded(
                          flex: 1,
                          child: Text(
                            checkParks[index].checkIn.formatDate(),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text(
                            checkParks[index].checkOut.formatDate(),
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      height: 1,
                    )
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
