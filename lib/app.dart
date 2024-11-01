import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_app/features/home/views/home.dart';
import 'package:store_app/features/login/views/login.dart';
import 'package:store_app/features/onboarding/views/onboarding.dart';
import 'package:store_app/features/signup/views/signup.dart';
import 'package:store_app/navigation_menu.dart';
import 'package:store_app/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: CustomAppTheme.lightTheme,
      darkTheme: CustomAppTheme.darkTheme,
      home: const NavigationMenu(),
    );
  }
}
