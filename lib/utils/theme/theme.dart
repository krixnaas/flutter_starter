import 'package:flutter/material.dart';
import 'package:store_app/utils/theme/custom_theme/bottom_sheet_theme.dart';
import 'package:store_app/utils/theme/custom_theme/checkbox_theme.dart';
import 'package:store_app/utils/theme/custom_theme/custom_chip_theme.dart';
import 'package:store_app/utils/theme/custom_theme/elevated_button_theme.dart';
import 'package:store_app/utils/theme/custom_theme/outlined_button_theme.dart';
import 'package:store_app/utils/theme/custom_theme/text_field_theme.dart';
import 'package:store_app/utils/theme/custom_theme/text_theme.dart';

class CustomAppTheme{
  CustomAppTheme._();
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: AppTextTheme.lightTextTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: AppOutlinedButtonTheme.lightOutlinedButtonTheme,
    bottomSheetTheme: BottomSheetTheme.lightBottomSheetTheme,
    checkboxTheme: CheckBoxTheme.lightCheckboxTheme,
    chipTheme: CustomChipTheme.lightChipTheme,
    inputDecorationTheme: CustomTextFormFieldTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: AppTextTheme.darkTextTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: AppOutlinedButtonTheme.darkOutlinedButtonTheme,
    bottomSheetTheme: BottomSheetTheme.darkBottomSheetTheme,
    checkboxTheme: CheckBoxTheme.lightCheckboxTheme,
    chipTheme: CustomChipTheme.lightChipTheme,
    inputDecorationTheme: CustomTextFormFieldTheme.darkInputDecorationTheme,
  );
}