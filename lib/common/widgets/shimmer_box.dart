import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShimmerBox extends StatelessWidget {
  final int flex;
  final double widthFactor;
  final AlignmentGeometry alignment;
  const ShimmerBox({
    super.key,
    required this.flex,
    required this.widthFactor,
    this.alignment = Alignment.centerLeft,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: FractionallySizedBox(
        widthFactor: widthFactor,
        alignment: alignment,
        child: Container(
          padding: EdgeInsets.all(10.r),
          decoration: BoxDecoration(
            color: Colors.black.withAlpha(150),
            borderRadius: BorderRadius.circular(16.r),
          ),
        ),
      ),
    );
  }
}
