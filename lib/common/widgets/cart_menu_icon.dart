
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:store_app/utils/constants/colors.dart';
import 'package:store_app/utils/helpers/helper_functions.dart';

class CounterIcon extends StatelessWidget {
  const CounterIcon({
    super.key,
    required this.iconColor,
    required this.onPressed
  });

  final Color iconColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);
    return Stack(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            Iconsax.shopping_bag,
            color: iconColor,
          ),
        ),
        Positioned(
          right: 5,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: isDark
                  ? AppColors.black
                  : AppColors.white,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text(
                "2",
                style: Theme.of(context)
                    .textTheme
                    .labelLarge
                    ?.apply(
                    color: AppColors.white,
                    fontSizeFactor: 0.8),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
