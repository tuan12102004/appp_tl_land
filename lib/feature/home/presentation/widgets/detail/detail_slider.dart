import 'dart:ui';

import 'package:app_tl_land_3212/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailSlider extends StatefulWidget {
  final List<String> sliderImages;
  const DetailSlider({super.key, required this.sliderImages});

  @override
  State<DetailSlider> createState() => _SliderWithDotsInsideState();
}

class _SliderWithDotsInsideState extends State<DetailSlider> {
  final PageController _controller = PageController();
  int _currentPage = 0; 

  @override
  void initState() {
    super.initState();

    _controller.addListener(() {
      if (_controller.hasClients) {
        final page = _controller.page?.round() ?? 0;
        if (_currentPage != page) {
          setState(() {
            _currentPage = page;
          });
        }
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 254.h,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            PageView.builder(
              controller: _controller,
              itemCount: widget.sliderImages.length,
              itemBuilder: (context, index) {
                final sliderImage = widget.sliderImages[index];
                return Padding(
                  padding: EdgeInsets.only(right: 16.w, left: 16.w),
                  child: SizedBox(
                    width: double.infinity,
                    height: 198.h,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12.r),
                      child: Image.asset(
                        sliderImage,
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
              right: 32.w,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(6.r),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 2.w, 
                    sigmaY: 2.h,
                  ),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: BackgroundColors.backgroundDefaultPrimary.withValues(alpha: 0.7),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                      child: Text(
                        // kiểm tra controller đã attach chưa
                        '${_controller.hasClients ? (_controller.page?.round() ?? 0) + 1 : 1}/${widget.sliderImages.length}',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: 17.sp,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ),
          ],
        ),
      ),
    );
  }
}
