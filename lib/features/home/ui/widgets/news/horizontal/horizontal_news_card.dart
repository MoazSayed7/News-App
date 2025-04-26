import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../../core/helpers/extensions.dart';
import '../../../../../../core/routers/routes.dart';
import '../../../../../../core/theme/colors.dart';
import '../../../../../../core/theme/text_styles.dart';
import '../../../../data/models/news_response_model.dart';

class CustomHorizontalCard extends StatelessWidget {
  final NewsArticle newArticle;

  const CustomHorizontalCard({super.key, required this.newArticle});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:
          () => context.pushNamed(Routes.detailsScreen, arguments: newArticle),
      child: Container(
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
                imageUrl: newArticle.imgUrl,
                fit: BoxFit.cover,
                filterQuality: FilterQuality.high,
                placeholder:
                    (context, url) => Shimmer.fromColors(
                      baseColor: Colors.grey[800]!,
                      highlightColor: Colors.grey[600]!,
                      child: Container(color: Colors.white),
                    ),
                errorWidget:
                    (context, url, error) => Shimmer.fromColors(
                      baseColor: Colors.grey[800]!,
                      highlightColor: Colors.grey[600]!,
                      child: Container(color: Colors.white),
                    ),
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
                      newArticle.desc,
                      style: TextStyles.font9WhiteSemiBoldNunitoSans,
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Row(
                    spacing: 3.w,
                    children: [
                      Icon(
                        Icons.menu_rounded,
                        color: Colors.white,
                        size: 12.sp,
                      ),
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
      ),
    );
  }
}
