import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../../core/theme/colors.dart';

class CustomHorizontalCardShimmer extends StatelessWidget {
  const CustomHorizontalCardShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 94.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: ColorsManager.charcoalOlive,
        borderRadius: BorderRadius.circular(10.r),
        boxShadow: [
          BoxShadow(
            color: ColorsManager.silverGray.withValues(alpha: 0.07),
            spreadRadius: 0,
            blurRadius: 80,
            offset: Offset(0.w, 100.h),
          ),
          BoxShadow(
            color: ColorsManager.silverGray.withValues(alpha: 0.05),
            spreadRadius: 0,
            blurRadius: 10.02,
            offset: Offset(0.w, 12.52.h),
          ),
        ],
      ),
      child: Shimmer.fromColors(
        baseColor: Colors.grey[800]!,
        highlightColor: Colors.grey[600]!,
        child: Row(
          spacing: 18.w,
          children: [
            // Image placeholder
            Container(
              width: 137.w,
              height: 94.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10.r)),
              ),
            ),

            // Content placeholder
            Container(
              padding: EdgeInsets.only(bottom: 10.h, right: 7.w, top: 10.h),
              width: 143.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // Description text lines
                  Container(
                    height: 8.h,
                    width: 120.w,
                    color: Colors.white,
                    margin: EdgeInsets.only(bottom: 4.h),
                  ),
                  Container(
                    height: 8.h,
                    width: 130.w,
                    color: Colors.white,
                    margin: EdgeInsets.only(bottom: 4.h),
                  ),
                  Container(
                    height: 8.h,
                    width: 110.w,
                    color: Colors.white,
                    margin: EdgeInsets.only(bottom: 4.h),
                  ),
                  Container(
                    height: 8.h,
                    width: 90.w,
                    color: Colors.white,
                    margin: EdgeInsets.only(bottom: 8.h),
                  ),

                  // READ button placeholder
                  Row(
                    children: [
                      Container(
                        height: 12.sp,
                        width: 12.sp,
                        color: Colors.white,
                        margin: EdgeInsets.only(right: 3.w),
                      ),
                      Container(height: 6.h, width: 30.w, color: Colors.white),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
