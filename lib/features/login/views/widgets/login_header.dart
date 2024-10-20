import 'package:flutter/material.dart';
import 'package:store_app/utils/constants/image_strings.dart';
import 'package:store_app/utils/constants/sizes.dart';
import 'package:store_app/utils/constants/texts.dart';
import 'package:store_app/utils/helpers/helper_functions.dart';


class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image: AssetImage(
            isDark ? AppImages.darkAppLogo : AppImages.lightAppLogo,
          ),
        ),
        Text(AppTexts.loginTitle, style: Theme.of(context).textTheme.headlineMedium,),
        const SizedBox(height: AppSizes.sm),
        Text(AppTexts.loginSubTitle, style: Theme.of(context).textTheme.bodyMedium,),
      ],
    );
  }
}
