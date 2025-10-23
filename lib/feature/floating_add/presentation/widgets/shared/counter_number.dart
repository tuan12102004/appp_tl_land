import 'package:app_tl_land_3212/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CounterScreen extends StatefulWidget {
  final int initialValue;
  final ValueChanged<int>? onChanged; // callback truyền giá trị ra ngoài

  const CounterScreen({
    super.key,
    this.initialValue = 0,
    this.onChanged,
  });

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  late int _count;

  @override
  void initState() {
    super.initState();
    _count = widget.initialValue;
  }

  void _increment() {
    setState(() {
      _count++;
    });
    widget.onChanged?.call(_count);
  }

  void _decrement() {
    setState(() {
      if (_count > 0) _count--;
    });
    widget.onChanged?.call(_count);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Nút trừ
        IconButton(
          onPressed: _decrement,
          icon: Icon(Icons.remove, color: IconColors.iconDefaultPrimary, size: 24.sp),
          style: IconButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.r),
              side: BorderSide(color: BorderColors.borderBrandStrong, width: 1.w),
            ),
          ),
        ),
        SizedBox(width: 8.w),
        // Giá trị ở giữa
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: Text(
            '$_count',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w400,
                  color: TextColors.textDefaultPrimary,
                ),
          ),
        ),
        SizedBox(width: 8.w),
        // Nút cộng
        IconButton(
          onPressed: _increment,
          icon: Icon(Icons.add, color: IconColors.iconBrandOnbrand, size: 24.sp),
          style: IconButton.styleFrom(
            backgroundColor: BackgroundColors.backgroundBrandPrimary,
            shape: const CircleBorder(),
          ),
        ),
      ],
    );
  }
}
