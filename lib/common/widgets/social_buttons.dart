import 'package:flutter/material.dart';
import 'package:store_app/utils/constants/colors.dart';
import 'package:store_app/utils/constants/image_strings.dart';
import 'package:store_app/utils/constants/sizes.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.grey,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          child: const Image(
            width: AppSizes.iconXLg,
            height: AppSizes.iconXLg,
            image: AssetImage(AppImages.google),
          ),
        ),
        const SizedBox(width: AppSizes.spaceBtwItems,),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.grey,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          child: const Image(
            width: AppSizes.iconXLg,
            height: AppSizes.iconXLg,
            image: AssetImage(AppImages.facebook),
          ),
        ),
      ],
    );
  }
}
