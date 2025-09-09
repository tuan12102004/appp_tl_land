import 'package:app_tl_land_3212/core/core_constants_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum LogoAlignment {
  top,
  center,
}

class BackgroundWidget extends StatelessWidget {
  final Widget child;
  final PreferredSizeWidget? appBar;
  final LogoAlignment logoAlignment;

  const BackgroundWidget({
    super.key,
    required this.child,
    this.appBar,
    this.logoAlignment = LogoAlignment.top,
  });

  @override
  Widget build(BuildContext context) {
    final logo = Image.asset(
      AppImages.logo,
      width: 200.w,
      height: 200.h,
      fit: BoxFit.contain,
    );

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: appBar,
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: _buildBody(logo),
        ),
      ),
    );
  }

  Widget _buildBody(Widget logo) {
    if (logoAlignment == LogoAlignment.center) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          logo,
          child,
        ],
      );
    } else {
      return Column(
        children: [
          logo,
          Expanded(child: child),
        ],
      );
    }
  }
}