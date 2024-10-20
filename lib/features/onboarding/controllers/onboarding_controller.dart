import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:store_app/features/signup/views/signup.dart';

class OnBoardingController extends GetxController
{
  static OnBoardingController get instance => Get.find();

  /// variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  ///  Update current index when page scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

  ///  Jump to the specific dot selected page
  void dotNavigationClick(index)
  {
     currentPageIndex.value = index;
     pageController.jumpTo(index);
  }

  ///  Update current index & jump to the next page
  void nextPage()
  {
    if(currentPageIndex.value == 2)
      {
        //Get.to(LoginView());
      }else{
        int page = currentPageIndex.value + 1;
        pageController.jumpToPage(page);
    }
  }

  ///  Update current index and jump to the last page
  void skipPage()
  {
     currentPageIndex.value = 2;
     pageController.jumpToPage(2);
     Get.to(()=> const SignupView());
  }
}