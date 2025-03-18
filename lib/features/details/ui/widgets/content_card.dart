import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/theme/text_styles.dart';

class ContentCard extends StatelessWidget {
  final String imageUrl;
  final String desc;
  const ContentCard({super.key, required this.imageUrl, required this.desc});
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: OverflowBox(
        maxWidth: MediaQuery.of(context).size.width,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(21.r),
              topRight: Radius.circular(21.r),
            ),
            color: ColorsManager.deepOliveBlack,
          ),
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 23.h),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 20.h,
            children: [
              Text(desc, style: TextStyles.font12SoftSageRegularPoppins),
              ClipRRect(
                borderRadius: BorderRadius.circular(14.r),
                child: CachedNetworkImage(
                  imageUrl: imageUrl,
                  height: 115.h,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                  progressIndicatorBuilder:
                      (context, url, downloadProgress) =>
                          CircularProgressIndicator(
                            value: downloadProgress.progress,
                          ),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
