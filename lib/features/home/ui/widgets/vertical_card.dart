import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app_offline/core/helpers/extensions.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/routers/routes.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/theme/text_styles.dart';

class CustomVerticalCard extends StatelessWidget {
  final String imageUrl;
  final String desc;
  const CustomVerticalCard({
    super.key,
    required this.imageUrl,
    required this.desc,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pushNamed(Routes.detailsScreen),
      child: Container(
        height: 209.h,
        width: 144.69.w,
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
        decoration: BoxDecoration(
          color: ColorsManager.onyxGray,
          borderRadius: BorderRadius.circular(17.r),
          boxShadow: [
            BoxShadow(
              color: ColorsManager.limePastel.withValues(alpha: 0.07),
              spreadRadius: 0,
              blurRadius: 76.91,
              offset: Offset(0.w, 96.14.h),
            ),
            BoxShadow(
              color: ColorsManager.limePastel.withValues(alpha: 0.04),
              spreadRadius: 0,
              blurRadius: 9.63,
              offset: Offset(0.w, 12.04.h),
            ),
          ],
        ),

        child: Column(
          children: [
            Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(14.r)),
              ),
              height: 133.79.h,
              width: double.infinity,
              child: CachedNetworkImage(
                imageUrl: imageUrl,
                filterQuality: FilterQuality.high,
                fit: BoxFit.cover,
                progressIndicatorBuilder:
                    (context, url, downloadProgress) =>
                        CircularProgressIndicator(
                          value: downloadProgress.progress,
                        ),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            ),
            verticalSpace(7.36),
            Text(
              desc,
              style: TextStyles.font9WhiteSemiBoldNunitoSans,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            verticalSpace(12),
            Row(
              spacing: 3.w,
              children: [
                Icon(Icons.menu_rounded, color: Colors.white, size: 12.sp),
                Text('READ', style: TextStyles.font6WhiteSemiBoldNunitoSans),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
