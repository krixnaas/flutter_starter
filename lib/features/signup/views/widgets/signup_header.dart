import 'package:flutter/material.dart';
import 'package:store_app/utils/constants/image_strings.dart';
import 'package:store_app/utils/constants/sizes.dart';
import 'package:store_app/utils/constants/texts.dart';
import 'package:store_app/utils/helpers/helper_functions.dart';


class SignupHeader extends StatelessWidget {
  const SignupHeader({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(AppTexts.signupTitle, style: Theme.of(context).textTheme.headlineMedium,),
        const SizedBox(height: AppSizes.spaceBtwSections),
        ],
    );
  }
}
