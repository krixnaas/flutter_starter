import 'package:flutter/material.dart';
import 'package:store_app/common/widgets/custom_shapes/primary_header_container.dart';
import 'package:store_app/common/widgets/search_container.dart';
import 'package:store_app/common/widgets/section_header.dart';
import 'package:store_app/features/home/views/widgets/home_app_bar.dart';
import 'package:store_app/features/home/views/widgets/home_categories.dart';
import 'package:store_app/utils/constants/colors.dart';
import 'package:store_app/utils/constants/sizes.dart';
import 'package:store_app/utils/helpers/helper_functions.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  /// -- AppBar
                  HomeAppBar(),
                  SizedBox(height: AppSizes.spaceBtwSections),

                  /// -- Searchbar
                  SearchContainer(text: "Seach in Store"),
                  SizedBox(height: AppSizes.spaceBtwSections),

                  /// -- Categories
                  Padding(
                    padding: EdgeInsets.only(left: AppSizes.defaultSpace),
                    child: Column(
                      children: [
                        /// -- Heading
                        SectionHeader(
                            title: "Popular Categories",
                            textColor: AppColors.white,
                            showActionBotton: false),
                        SizedBox(height: AppSizes.spaceBtwItems),

                        /// Categories
                        HomeCategories(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

