import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../../core/helpers/spacing.dart';
import '../../../../../../core/theme/colors.dart';

class CustomVerticalCardShimmer extends StatelessWidget {
  const CustomVerticalCardShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 209.h,
      width: 144.69.w,
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
      decoration: BoxDecoration(
        color: ColorsManager.onyxGray,
        borderRadius: BorderRadius.circular(17.r),
      ),
      child: Shimmer.fromColors(
        baseColor: Colors.grey[800]!,
        highlightColor: Colors.grey[600]!,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image placeholder
            Container(
              height: 133.79.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(14.r)),
              ),
            ),
            verticalSpace(7.36),
            // Description placeholder - two lines
            Container(
              height: 8.h,
              width: double.infinity,
              color: Colors.white,
            ),
            verticalSpace(4),
            Container(
              height: 8.h,
              width: 100.w,
              color: Colors.white,
            ),
            verticalSpace(12),
            // Read button placeholder
            Row(
              children: [
                Container(
                  height: 12.sp,
                  width: 12.sp,
                  color: Colors.white,
                ),
                SizedBox(width: 3.w),
                Container(
                  height: 6.h,
                  width: 30.w,
                  color: Colors.white,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}