import 'package:flutter/material.dart';
import 'package:lmsadminpanle/utils/constants/color_manager.dart';
import 'package:lmsadminpanle/utils/constants/values_manager.dart';

import 'info_card.dart';

class TopCardsLargeWidget extends StatelessWidget {
  const TopCardsLargeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: AppPadding.p12, vertical: AppPadding.p12),
      child: Row(
        children: [
          const InfoCard(
            title: "Total Students",
            value: "10",
            icon: Icons.assignment_turned_in,
            cardColor: ColorManager.darkColor,
          ),
          SizedBox(
            width: _width / 64,
          ),
          const InfoCard(
            title: "Total Teachers",
            value: "15",
            icon: Icons.assignment_turned_in,
            cardColor: ColorManager.darkColor,
          ),
          SizedBox(
            width: _width / 64,
          ),
          const InfoCard(
            title: "Total Schools",
            value: "02",
            icon: Icons.assignment_turned_in,
            cardColor: ColorManager.darkColor,
          ),
          SizedBox(
            width: _width / 64,
          ),
          const InfoCard(
            title: "Total Districts",
            value: "01",
            icon: Icons.assignment_turned_in,
            cardColor: ColorManager.darkColor,
          ),
        ],
      ),
    );
  }
}
