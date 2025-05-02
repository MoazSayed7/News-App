import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../core/theme/text_styles.dart';

class TopHeader extends StatelessWidget {
  const TopHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hello Moaz', style: TextStyles.font17WhiteSemiBoldNunitoSans),
            Text(
              'Have a nice day',
              style: TextStyles.font11GrayStoneRegularNunitoSans,
            ),
          ],
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 2.w),
            shape: BoxShape.circle,
          ),
          child: ClipOval(
            child: CachedNetworkImage(
              imageUrl: 'https://avatars.githubusercontent.com/u/75115429?v=4',
              width: 42.w,
              height: 42.h,
              filterQuality: FilterQuality.high,
              fit: BoxFit.cover,
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
        ),
      ],
    );
  }
}
