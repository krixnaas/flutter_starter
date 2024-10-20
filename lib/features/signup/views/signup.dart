import 'package:flutter/material.dart';
import 'package:store_app/common/styles/spacing_style.dart';
import 'package:store_app/common/widgets/fom_divider.dart';
import 'package:store_app/common/widgets/social_buttons.dart';
import 'package:store_app/features/signup/views/widgets/signup_form.dart';
import 'package:store_app/features/signup/views/widgets/signup_header.dart';
import 'package:store_app/utils/constants/sizes.dart';
import 'package:store_app/utils/constants/texts.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
            padding: AppSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Logo, Title & Sub-title
              const SignupHeader(),

              /// Form
              SignupForm(),

              const SizedBox(height: AppSizes.spaceBtwSections),
              /// Divider
              const FormDivider(dividerText: AppTexts.orSignUpWith),

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
