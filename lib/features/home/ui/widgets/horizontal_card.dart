import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/theme/text_styles.dart';

class CustomHorizontalCard extends StatelessWidget {
  const CustomHorizontalCard({super.key});

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
      child: Row(
        spacing: 18.w,
        children: [
          Container(
            width: 137.w,
            height: 94.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10.r)),
            ),
            clipBehavior: Clip.antiAlias,
            child: CachedNetworkImage(
              imageUrl:
                  'https://images.unsplash.com/photo-1500467525088-aafe28c0a95e',
              fit: BoxFit.cover,
              filterQuality: FilterQuality.high,
              progressIndicatorBuilder:
                  (context, url, downloadProgress) => CircularProgressIndicator(
                    value: downloadProgress.progress,
                  ),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 10.h, right: 7.w, top: 10.h),
            width: 143.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 60.h,
                  child: Text(
                    'More animal species are getting COVID-19 for the first time',
                    style: TextStyles.font9WhiteSemiBoldNunitoSans,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Row(
                  spacing: 3.w,
                  children: [
                    Icon(Icons.menu_rounded, color: Colors.white, size: 12.sp),
                    Text(
                      'READ',
                      style: TextStyles.font6WhiteSemiBoldNunitoSans,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
