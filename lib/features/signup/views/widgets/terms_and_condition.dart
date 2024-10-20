import 'package:flutter/material.dart';
import 'package:store_app/utils/constants/colors.dart';
import 'package:store_app/utils/constants/sizes.dart';
import 'package:store_app/utils/constants/texts.dart';
import 'package:store_app/utils/helpers/helper_functions.dart';


class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final isDark = HelperFunctions.isDarkMode(context);

    return Row(
      children: [
        SizedBox(width:24, height:24, child: Checkbox(value: true, onChanged: (value) {})),
        const SizedBox(width: AppSizes.spaceBtwItems),
        Text.rich(
            TextSpan(
                children: [
                  TextSpan(
                      text: '${AppTexts.iAgreeTo} ',
                      style: Theme.of(context).textTheme.bodySmall
                  ),
                  TextSpan(
                    text: '${AppTexts.privacyPolicy} ',
                    style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: isDark ? AppColors.white : AppColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor:  isDark ? AppColors.white : AppColors.primary,
                    ),
                  ),
                  TextSpan(
                      text: '${AppTexts.and} ',
                      style: Theme.of(context).textTheme.bodySmall
                  ),
                  TextSpan(
                    text: '${AppTexts.termsOfUse} ',
                    style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: isDark ? AppColors.white : AppColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor:  isDark ? AppColors.white : AppColors.primary,
                    ),
                  ),
                ]
            )
        ),
      ],
    );
  }
}