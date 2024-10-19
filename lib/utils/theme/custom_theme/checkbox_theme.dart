import 'package:flutter/material.dart';
import 'package:store_app/utils/constants/colors.dart';
import 'package:store_app/utils/constants/sizes.dart';

class CheckBoxTheme{
  CheckBoxTheme._();

  static CheckboxThemeData lightCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSizes.xs)),
    checkColor: WidgetStateProperty.resolveWith((states){
      if(states.contains(WidgetState.selected))
        {
          return AppColors.white;
        }else{
          return AppColors.black;
      }
    }),
    fillColor: WidgetStateProperty.resolveWith((states){
      if(states.contains(WidgetState.selected))
      {
        return AppColors.primary;
      }else{
        return Colors.transparent;
      }
    }),
  );

  static CheckboxThemeData darkCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSizes.xs)),
    checkColor: WidgetStateProperty.resolveWith((states){
      if(states.contains(WidgetState.selected))
      {
        return AppColors.white;
      }else{
        return AppColors.black;
      }
    }),
    fillColor: WidgetStateProperty.resolveWith((states){
      if(states.contains(WidgetState.selected))
      {
        return AppColors.primary;
      }else{
        return Colors.transparent;
      }
    }),
  );
}