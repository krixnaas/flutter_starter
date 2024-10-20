
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:store_app/features/signup/views/verify_email.dart';
import 'package:store_app/features/signup/views/widgets/terms_and_condition.dart';
import 'package:store_app/utils/constants/sizes.dart';
import 'package:store_app/utils/constants/texts.dart';
import 'package:store_app/utils/helpers/helper_functions.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);

    return Form(
      child: Column(
        children: [
          /// First name & Last Name
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: AppTexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(width: AppSizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: AppTexts.lastName,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSizes.spaceBtwInputFields),
          /// Username
          TextFormField(
            decoration: const InputDecoration(
              labelText: AppTexts.username,
              prefixIcon: Icon(Iconsax.user),
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtwInputFields),
          /// Email
          TextFormField(
            decoration: const InputDecoration(
              labelText: AppTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtwInputFields),
          /// Phone Number
          TextFormField(
            decoration: const InputDecoration(
              labelText: AppTexts.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtwInputFields),
          /// Password
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              labelText: AppTexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtwSections),

          /// Terms & Conditions
          const TermsAndConditions(),

          const SizedBox(height: AppSizes.spaceBtwSections),
          /// Signup Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(()=>const VerifyEmailView()),
              child: const Text(AppTexts.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}

