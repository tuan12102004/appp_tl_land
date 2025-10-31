import 'package:app_tl_land_3212/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTheme {
  AppTheme._();

  // Input border
  static OutlineInputBorder _inputBorder({
    Color borderColor = AppColors.borderInputFieldDefault,
  }) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.r),
      borderSide: BorderSide(width: 0.5.w, color: borderColor),
      gapPadding: 0,
    );
  }

  // Input decoration theme
  static final _inputDecorationTheme = InputDecorationTheme(
    contentPadding: EdgeInsets.symmetric(vertical: 11.h, horizontal: 16.w),
    filled: true,
    fillColor: AppColors.backgroundInputFieldDefault,
    hintStyle: _textStyle(
      fontSize: 17.sp,
      fontWeight: FontWeight.w400,
      height: 1.29,
      letterSpacing: -0.43.sp,
      textColor: AppColors.textDefaultTertiary,
    ),
    labelStyle: const TextStyle(color: Colors.black87),
    border: _inputBorder(),
    enabledBorder: _inputBorder(),
    focusedBorder: _inputBorder(borderColor: AppColors.borderInputFieldFocused),
    errorBorder: _inputBorder(borderColor: AppColors.borderInputFieldWrong),
    focusedErrorBorder: _inputBorder(
      borderColor: AppColors.borderInputFieldCorrect,
    ),
    suffixIconColor: AppColors.iconDefaultTertiary,
    disabledBorder: _inputBorder(),
    errorStyle: _textStyle(
      fontSize: 12.sp,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4,
      textColor: AppColors.textErrorPrimary,
    ),
  );

  static TextStyle _textStyle({
    required double fontSize,
    Color? textColor = AppColors.textDefaultPrimary,
    FontWeight? fontWeight,
    double? height,
    double? letterSpacing,
  }) =>
      TextStyle(
        color: textColor,
        fontSize: fontSize,
        fontWeight: fontWeight,
        height: height,
        letterSpacing: letterSpacing,
        fontFamily: 'Inter',
      );

  // Text theme
  static final TextTheme _textTheme = TextTheme(
    displayLarge: TextStyle(fontSize: 57.sp, fontWeight: FontWeight.w400),
    displayMedium: TextStyle(fontSize: 45.sp, fontWeight: FontWeight.w400),
    displaySmall: TextStyle(fontSize: 36.sp, fontWeight: FontWeight.w400),
    headlineLarge: TextStyle(fontSize: 32.sp, fontWeight: FontWeight.w400),
    headlineMedium: TextStyle(fontSize: 28.sp, fontWeight: FontWeight.w400),
    headlineSmall: TextStyle(
        fontSize: 24.sp, fontWeight: FontWeight.w400, letterSpacing: -.26.sp),
    titleLarge: TextStyle(
        fontSize: 22.sp, fontWeight: FontWeight.w400, letterSpacing: -.45.sp),
    titleMedium: TextStyle(
        fontSize: 17.sp, fontWeight: FontWeight.w400, letterSpacing: -.43.sp),
    titleSmall: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400),
    bodyLarge: TextStyle(
        fontSize: 16.sp, fontWeight: FontWeight.w400, letterSpacing: -.31.sp),
    bodyMedium: TextStyle(
        fontSize: 15.sp, fontWeight: FontWeight.w400, letterSpacing: -.23.sp),
    bodySmall: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400),
    labelLarge: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400),
    labelMedium: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400),
    labelSmall: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w400),
  ).apply(bodyColor: AppColors.textDefaultPrimary, fontFamily: "Inter");

  // Date picker theme data
  static final DatePickerThemeData _datePickerThemeData = DatePickerThemeData(
    backgroundColor: AppColors.backgroundDefaultPrimary,
    headerBackgroundColor: AppColors.backgroundDefaultSecondary,
    headerForegroundColor: AppColors.textDefaultPrimary,
    // Day foreground
    dayForegroundColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return AppColors.textButtonPrimary;
      }
      return AppColors.textDefaultPrimary;
    }),

    // Day background
    dayBackgroundColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return AppColors.backgroundButtonPrimary;
      }
      return Colors.transparent;
    }),

    // Today background
    todayBackgroundColor: WidgetStatePropertyAll(
      AppColors.backgroundButtonPrimary.withValues(alpha: 0.5),
    ),

    // Today foreground
    todayForegroundColor: WidgetStatePropertyAll(AppColors.textButtonPrimary),
    todayBorder: BorderSide.none,

    // Year foreground
    yearForegroundColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return AppColors.textButtonPrimary;
      }
      return AppColors.textDefaultPrimary;
    }),

    // Year background
    yearBackgroundColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return AppColors.backgroundButtonPrimary;
      }
      return Colors.transparent;
    }),

    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
    dayStyle: _textStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.5,
      textColor: AppColors.textDefaultPrimary,
    ),
    cancelButtonStyle: TextButton.styleFrom(
      backgroundColor: Colors.transparent,
      foregroundColor: AppColors.stateColorsError,
    ),
    confirmButtonStyle: ElevatedButton.styleFrom(
      backgroundColor: AppColors.backgroundButtonPrimary,
      foregroundColor: AppColors.textButtonPrimary,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.w)),
    ),
  );

  // Appbar icon theme
  static final IconThemeData _appbarIconTheme = IconThemeData(
    color: AppColors.textNavigationBarEnabled,
    applyTextScaling: false,
    size: 24.sp,
  );

  // Elevated button theme data
  static final ElevatedButtonThemeData _elevatedButtonThemeData =
      ElevatedButtonThemeData(
    style: ButtonStyle(
      minimumSize: WidgetStatePropertyAll(Size.zero),
      maximumSize: WidgetStatePropertyAll(Size.zero),
      shadowColor: WidgetStatePropertyAll(Colors.transparent),
      backgroundColor: WidgetStatePropertyAll(
        AppColors.backgroundButtonPrimary,
      ),
      foregroundColor: WidgetStatePropertyAll(AppColors.textButtonPrimary),
      elevation: WidgetStatePropertyAll(0.0),
      padding: WidgetStatePropertyAll(
        EdgeInsets.symmetric(horizontal: 20.w, vertical: 22.h),
      ),
      alignment: Alignment.center,
      visualDensity: VisualDensity.compact,
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
      ),
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
    ),
  );

  // App bar theme
  static final AppBarTheme _appBarTheme = AppBarTheme(
    backgroundColor: AppColors.backgroundDefaultPrimary,
    titleTextStyle: _textStyle(
      fontSize: 17.sp,
      fontWeight: FontWeight.w400,
      height: 1.29,
      letterSpacing: -.43.sp,
      textColor: TextColors.textNavigationBarEnabled,
    ),
    centerTitle: true,
    iconTheme: _appbarIconTheme,
    foregroundColor: AppColors.iconNavigationBarEnabled,
    actionsIconTheme: _appbarIconTheme,
    elevation: 0,
  );

  /*
    ==================== LIGHT THEME ====================
  */

  static final lightTheme = ThemeData(
    // Brightness
    brightness: Brightness.light,

    // Scaffold background
    scaffoldBackgroundColor: AppColors.backgroundDefaultPrimary,

    // Primary and secondary color
    colorScheme: ColorScheme.light(primary: AppColors.primary),

    // App theme
    appBarTheme: _appBarTheme,

    // Input decoration theme
    inputDecorationTheme: _inputDecorationTheme,

    // Font family
    fontFamily: 'Inter',

    // Selection text theme
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: AppColors.textDefaultTertiary,
      selectionColor: AppColors.primary.withValues(alpha: 0.3),
      selectionHandleColor: AppColors.primary.withValues(alpha: 0.3),
    ),

    // Text theme
    textTheme: _textTheme,

    // Date picker theme data
    datePickerTheme: _datePickerThemeData,

    // Elevated button theme
    elevatedButtonTheme: _elevatedButtonThemeData,

    // Divider
    dividerColor: AppColors.borderSeparatorOpaque,
  );
}
