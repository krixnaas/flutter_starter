import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:store_app/utils/constants/colors.dart';
import 'package:store_app/utils/constants/sizes.dart';
import 'package:store_app/utils/device/device_utility.dart';
import 'package:store_app/utils/helpers/helper_functions.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground=true,
    this.showBorder = true,
    this.onTap,
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: AppSizes.defaultSpace),
        child: Container(
          width: DeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(AppSizes.md),
          decoration: BoxDecoration(
            color: showBackground ? isDark ?  AppColors.dark :AppColors.light : Colors.transparent,
            borderRadius:
            BorderRadius.circular(AppSizes.cardRadiusLg),
            border: showBorder ? Border.all(color: isDark ?  AppColors.dark :AppColors.grey):null,
          ),
          child: Row(
            children: [
              Icon(
                icon,
                color: AppColors.darkerGrey,
              ),
              const SizedBox(width: AppSizes.spaceBtwItems),
              Text(
                text,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(color: AppColors.darkerGrey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
