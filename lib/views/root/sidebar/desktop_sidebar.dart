import 'package:flutter/material.dart';
import 'package:lmsadminpanle/controllers/sidebar_controller.dart';
import 'package:lmsadminpanle/utils/constants/assets_manager.dart';
import 'package:lmsadminpanle/utils/constants/color_manager.dart';
import 'package:lmsadminpanle/utils/helpers/helper.dart';
import 'package:lmsadminpanle/views/root/widgets/sidebar_item.dart';
import 'package:sizer/sizer.dart';

class DesktopSidebar extends StatelessWidget {
  final SideBarController sideBarController;
  const DesktopSidebar({Key? key, required this.sideBarController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: ColorManager.darkColor,
        child: Column(
          children: [
            buildSpaceVertical(4.h),
            Image.asset(AssetImages.logo, height: 10.h, width: 20.w),
            buildSpaceVertical(4.h),
            const Divider(thickness: 2, color: ColorManager.sidebarMenuColor),
            buildSpaceVertical(6.h),
            Expanded(
              child: ListView.builder(
                itemCount: sideBarController.iconsList.length,
                itemBuilder: (context, index) {
                  return SidebarItem(
                    title: sideBarController.namesList[index],
                    svgSrc: sideBarController.iconsList[index],
                    isTablet: false,
                    press: () {
                      sideBarController.onSelected(index);
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
