import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:store_app/features/signup/views/signup.dart';
import 'package:store_app/utils/constants/sizes.dart';
import 'package:store_app/utils/constants/texts.dart';


class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: AppSizes.spaceBtwSections),
        child: Column(
          children: [
            ///Email
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: AppTexts.email,
              ),
            ),

            const SizedBox(height: AppSizes.spaceBtwInputFields),

            ///Password
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: AppTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(height: AppSizes.spaceBtwInputFields/2),

            /// Remember Me & Forgot Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Remember me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value){}),
                    const Text(AppTexts.rememberMe),
                  ],
                ),

                /// Forgot password
                TextButton(onPressed: (){}, child: const Text(AppTexts.forgetPassword)),
              ],
            ),
            const SizedBox(height: AppSizes.spaceBtwSections,),

            /// Sign In Button
            SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){}, child: const Text(AppTexts.signIn)),),
            const SizedBox(height: AppSizes.spaceBtwItems,),
            /// Create Account Button
            SizedBox(width: double.infinity, child: OutlinedButton(onPressed: () => Get.to(()=> const SignupView()), child: const Text(AppTexts.createAccount)),),
          ],
        ),
      ),
    );
  }
}