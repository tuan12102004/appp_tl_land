import 'package:app_tl_land_3212/config/config_router_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'config/theme/app_themes.dart';
import 'core/lang/app_localizations.dart';

class TLLandApp extends StatelessWidget {
  const TLLandApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(
        textScaler: TextScaler.linear(1.0),
      ), // MediaQuery để khóa phóng to chữ
      child: ScreenUtilInit(
        // responsive UI
        minTextAdapt: true, // đảm bảo text vẫn hiển thị rõ ngay cả khi co nhỏ
        splitScreenMode: true, //  hỗ trợ chế độ chia đôi màn hình
        designSize: Size(393, 852), // kích thước IP 15pro
        builder: (_, child) {
          return MaterialApp.router(
            // Cấu hình điều hướng
            routerConfig: AppRouters.routers,
            debugShowCheckedModeBanner: false,
            title: 'App TL Land',
            theme: AppTheme.lightTheme,
            // Hỗ trợ đa ngôn ngữ (localization) - anh/việt
            supportedLocales: [Locale('vi'), Locale('en')],
            locale: Locale('vi'),
            localizationsDelegates: [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
          );
        },
      ),
    );
  }
}
