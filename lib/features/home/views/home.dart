import 'package:flutter/material.dart';
import 'package:store_app/common/widgets/custom_shapes/primary_header_container.dart';
import 'package:store_app/features/home/views/widgets/home_app_bar.dart';
import 'package:store_app/utils/helpers/helper_functions.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  HomeAppBar(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

