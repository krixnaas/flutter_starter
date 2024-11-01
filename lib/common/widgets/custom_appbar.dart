import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_app/utils/constants/colors.dart';
import 'package:store_app/utils/constants/sizes.dart';
import 'package:store_app/utils/device/device_utility.dart';
import 'package:store_app/utils/helpers/helper_functions.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({
    super.key,
    this.title,
    this.actions,
    this.leadingIcon,
    this.leadingOnPressed,
    this.showBackArrow = true,
  });

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);
    final iconColor = isDark ? AppColors.white : AppColors.black;
    return AppBar(
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: false,
      iconTheme: IconThemeData(color: iconColor),
      leading: showBackArrow
          ? IconButton(
        onPressed: () => Get.back(),
        icon: Icon(leadingIcon ?? Icons.arrow_back, color: iconColor),
      )
          : leadingIcon != null
          ? IconButton(
        onPressed: leadingOnPressed,
        icon: Icon(leadingIcon, color: iconColor),
      )
          : null,
      title: title,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(DeviceUtils.getAppBarHeight());
}
