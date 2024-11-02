import 'package:flutter/material.dart';
import 'package:store_app/utils/constants/colors.dart';
import 'package:store_app/utils/constants/sizes.dart';
import 'package:store_app/utils/helpers/helper_functions.dart';


class VirticalImageText extends StatelessWidget {
  const VirticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = AppColors.white,
    this.backgroundColor = AppColors.white,
    this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(
            right: AppSizes.spaceBtwItems),
        child: Column(
          children: [
            /// Circular Icon
            Container(
              width: 56,
              height: 56,
              padding:
              const EdgeInsets.all(AppSizes.sm),
              decoration: BoxDecoration(
                color: backgroundColor ?? (isDark? AppColors.black: AppColors.white),
                borderRadius:
                BorderRadius.circular(100),
              ),
              child: Center(
                child: Image(
                  image: AssetImage(
                      image),
                  fit: BoxFit.cover,
                  color: isDark ? AppColors.black: AppColors.white,
                ),
              ),
            ),

            /// Text
            const SizedBox(
                height: AppSizes.spaceBtwItems / 2),
            SizedBox(
              width: 55,
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: textColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
