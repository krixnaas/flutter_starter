import 'package:flutter/material.dart';
import 'package:store_app/common/styles/spacing_style.dart';
import 'package:store_app/common/widgets/fom_divider.dart';
import 'package:store_app/common/widgets/social_buttons.dart';
import 'package:store_app/features/login/views/widgets/login_form.dart';
import 'package:store_app/features/login/views/widgets/login_header.dart';

import 'package:store_app/utils/constants/sizes.dart';
import 'package:store_app/utils/constants/texts.dart';
import 'package:store_app/utils/helpers/helper_functions.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: AppSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// Logo, Title & Sub-title
              const LoginHeader(),

              /// Form
              const LoginForm(),

              /// Divider
              FormDivider(dividerText: AppTexts.orSignInWith),

              const SizedBox(height: AppSizes.spaceBtwSections),
              /// Footer
              const SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
