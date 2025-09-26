import 'dart:async';

import 'package:app_tl_land_3212/core/constants/app_colors.dart';
import 'package:app_tl_land_3212/feature/home/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SliderWithDotsInside extends StatefulWidget {
  final List<SliderEntity> sliderImages;
  const SliderWithDotsInside({super.key, required this.sliderImages});

  @override
  State<SliderWithDotsInside> createState() => _SliderWithDotsInsideState();
}

class _SliderWithDotsInsideState extends State<SliderWithDotsInside> {
  final PageController _controller = PageController();
  int _currentPage = 0;
  late final PageController _pageController;
  late final Timer _timer;

  @override
  void initState() {
    _pageController = _controller;
    _timer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      if (_currentPage < widget.sliderImages.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    });
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    _pageController.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 198.h,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            PageView.builder(
              controller: _controller,
              itemCount: widget.sliderImages.length,
              itemBuilder: (context, index) {
                final sliderImage = widget.sliderImages[index];
                return SizedBox(
                  width: double.infinity,
                  height: 198.h,
                  child: Padding(
                    padding: EdgeInsets.only(right: 16.w, left: 16.w, top: 16.w),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12.r),
                      child: Image.asset(
                        sliderImage.image,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
                  ),
                );
              },
            ),
            // Dấu chấm nằm trong slider
            Positioned(
              bottom: 16.h,
              child: SmoothPageIndicator(
                controller: _controller,
                count: widget.sliderImages.length,
                effect: WormEffect(
                  dotHeight: 12.h,
                  dotWidth: 12.w,
                  spacing: 3.w,
                  dotColor: IconColors.iconDefaultQuaternary.withValues(alpha: 0.2),
                  activeDotColor: IconColors.iconBrandPrimary,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
