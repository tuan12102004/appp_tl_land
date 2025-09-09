import 'package:flutter/material.dart';
import 'package:app_tl_land_3212/core/constants/app_colors.dart';
import 'package:app_tl_land_3212/core/constants/app_images.dart';
import 'package:go_router/go_router.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    _animation = Tween<double>(
      begin: 0.0,
      end: 1,
    ).animate(_animationController);
    _animationController.forward();
    Future.delayed(const Duration(seconds: 2), () {
      context.go('/auth/login');
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundDefaultPrimary,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: BackgroundColors.backgroundDefaultPrimary,
        ),
        child: Center(
          child: FadeTransition(
            opacity: _animation,
            child: Image.asset(AppImages.logo, width: 200, height: 200),
          ),
        ),
      ),
    );
  }
}
