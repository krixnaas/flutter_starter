import 'package:flutter/material.dart';
import 'package:store_app/common/widgets/cart_menu_icon.dart';
import 'package:store_app/common/widgets/custom_appbar.dart';
import 'package:store_app/utils/constants/colors.dart';
import 'package:store_app/utils/constants/texts.dart';


class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppbar(
      showBackArrow: false,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppTexts.homeAppbarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: AppColors.grey),
          ),
          Text(
            AppTexts.homeAppbarSubTitle,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: AppColors.white),
          ),
        ],
      ),
      actions: [
        CounterIcon(
            onPressed: (){},
            iconColor: AppColors.white
        ),
      ],
    );
  }
}