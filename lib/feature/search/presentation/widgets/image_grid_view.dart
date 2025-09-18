import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageGridView extends StatelessWidget {
  final List<String> images;

  const ImageGridView({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    if (images.isEmpty) return const SizedBox();

    if (images.length == 1) {
      return _buildSingleImage(images[0]);
    } else if (images.length == 2) {
      return _buildTwoImages(images);
    } else {
      return _buildGridImages(images);
    }
  }

  Widget _buildSingleImage(String url) {
    return Container(
      width: double.infinity,
      height: 223.h,
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        image: DecorationImage(
          image: NetworkImage(url),
          fit: BoxFit.cover,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.r),
        ),
      ),
    );
  }

  Widget _buildTwoImages(List<String> urls) {
    return Row(
      spacing: 6.h,
      children: urls.map((url) {
        return Expanded(
          child: Container(
            height: 161.50.h,
            margin: EdgeInsets.only(right: urls.last == url ? 0 : 4.w),
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              image: DecorationImage(
                image: NetworkImage(url),
                fit: BoxFit.cover,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6.r),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }

  Widget _buildGridImages(List<String> urls) {
    final displayImages = urls.take(4).toList();
    return SizedBox(
      height: 329.h,
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: displayImages.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 4.w,
          crossAxisSpacing: 4.w,
        ),
        itemBuilder: (context, index) {
          final isLast = index == 3 && urls.length > 4;
          return Stack(
            fit: StackFit.expand,
            children: [
              Container(
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  image: DecorationImage(
                    image: NetworkImage(displayImages[index]),
                    fit: BoxFit.cover,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.r),
                  ),
                ),
              ),
              if (isLast)
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black.withValues(alpha: 0.20),
                    borderRadius: BorderRadius.circular(6.r),
                  ),
                  child: Center(
                    child: Text(
                      '+${urls.length - 4}',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 34.sp,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 1.21.sp,
                        letterSpacing: 0.40.sp,
                      ),
                    ),
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}
