import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helpers/extensions.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/routers/routes.dart';
import '../../../../../core/theme/colors.dart';
import '../../../../../core/theme/text_styles.dart';
import '../../../data/models/news_response_model.dart';

class CustomVerticalCard extends StatelessWidget {
  final NewsArticle newArticle;

  const CustomVerticalCard({super.key, required this.newArticle});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:
          () => context.pushNamed(Routes.detailsScreen, arguments: newArticle),
      child: Container(
        height: 209.h,
        width: 144.69.w,
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
        decoration: BoxDecoration(
          color: ColorsManager.onyxGray,
          borderRadius: BorderRadius.circular(17.r),
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
                imageUrl: newArticle.imgUrl,
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
              newArticle.desc,
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
