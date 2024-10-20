import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_app/features/login/views/login.dart';
import 'package:store_app/features/onboarding/views/onboarding.dart';
import 'package:store_app/features/signup/views/signup.dart';
import 'package:store_app/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: CustomAppTheme.lightTheme,
      darkTheme: CustomAppTheme.darkTheme,
      home: const SignupView(),
    );
  }
}
