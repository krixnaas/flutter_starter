import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_app/features/onboarding/controllers/onboarding_controller.dart';
import 'package:store_app/features/onboarding/views/widgets/onboarding_dot_navigation.dart';
import 'package:store_app/features/onboarding/views/widgets/onboarding_next_button.dart';
import 'package:store_app/features/onboarding/views/widgets/onboarding_pages.dart';
import 'package:store_app/features/onboarding/views/widgets/onboarding_skip.dart';
import 'package:store_app/utils/constants/image_strings.dart';
import 'package:store_app/utils/constants/texts.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
        /// Horizontal Scrollable Pages
        PageView(
          controller: controller.pageController,
          onPageChanged: controller.updatePageIndicator,
          children: const [
            OnBoardingPage(
                image: AppImages.onBoardingImage1,
                title: AppTexts.onBoardingTitle1,
                subTitle: AppTexts.onBoardingSubTitle1,
            ),
            OnBoardingPage(
              image: AppImages.onBoardingImage2,
              title: AppTexts.onBoardingTitle2,
              subTitle: AppTexts.onBoardingSubTitle2,
            ),
            OnBoardingPage(
              image: AppImages.onBoardingImage3,
              title: AppTexts.onBoardingTitle3,
              subTitle: AppTexts.onBoardingSubTitle3,
            ),
          ],
        ),

        /// Skip Button
        const OnBoardingSkip(),

        /// Dot Navigaion SmoothPageIndicator
        const OnBoardingDotNavigation(),

        /// Circualr Button
        const onBoardingNextButton(),

        ],
      ),
    );
  }
}
