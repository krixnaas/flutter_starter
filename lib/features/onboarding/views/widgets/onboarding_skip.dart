import 'package:flutter/material.dart';
import 'package:store_app/features/onboarding/controllers/onboarding_controller.dart';
import 'package:store_app/utils/constants/sizes.dart';
import 'package:store_app/utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top:DeviceUtils.getAppBarHeight(),
        right: AppSizes.defaultSpace,
        child: TextButton(onPressed: ()=> OnBoardingController.instance.skipPage(),
      child: const Text('Skip'),
        ),
    );
  }
}
