import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_app/features/home/views/home.dart';
import 'package:store_app/utils/constants/colors.dart';
import 'package:iconsax/iconsax.dart';
import 'package:store_app/utils/helpers/helper_functions.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    return Scaffold(
      bottomNavigationBar: Obx(
        () {
          final isDark = HelperFunctions.isDarkMode(context);
          final backgroundColor = isDark ? AppColors.black : AppColors.white;
          final iconColor = isDark ? AppColors.white : AppColors.black;
          return NavigationBar(
            height: 80,
            elevation: 0,
            indicatorColor: isDark ? iconColor.withOpacity(0.1) : iconColor.withOpacity(0.1),
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (index) =>
            controller.selectedIndex.value = index,
            backgroundColor: backgroundColor,
            destinations: [
              NavigationDestination(
                  icon: Icon(Iconsax.home, color: iconColor), label: 'Home'),
              NavigationDestination(
                  icon: Icon(Iconsax.shop, color: iconColor), label: 'Store'),
              NavigationDestination(
                  icon: Icon(Iconsax.heart, color: iconColor), label: 'Wishlist'),
              NavigationDestination(
                  icon: Icon(Iconsax.user, color: iconColor), label: 'Profile'),
            ],
          );
        },
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final selectedIndex = 0.obs;
  final screens = [
    const HomeView(),
    Container(color: Colors.purple),
    Container(color: Colors.orange),
    Container(color: Colors.blue),
  ];
}
