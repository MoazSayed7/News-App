import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/colors.dart';

class HeaderImage extends StatelessWidget {
  final String imageUrl;
  const HeaderImage({super.key, required this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 559.h,
      child: ShaderMask(
        shaderCallback: (Rect bounds) {
          return LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              ColorsManager.charcoalOlive,
              ColorsManager.charcoalOlive.withValues(alpha: .9),
              ColorsManager.eclipseBlack.withValues(alpha: 0),
            ],
            stops: const [0.0, .34, .68],
          ).createShader(bounds);
        },
        blendMode: BlendMode.srcATop,
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          fit: BoxFit.cover,
          filterQuality: FilterQuality.high,
          progressIndicatorBuilder:
              (context, url, downloadProgress) =>
                  CircularProgressIndicator(value: downloadProgress.progress),
          errorWidget: (context, url, error) => Icon(Icons.error),
        ),
      ),
    );
  }
}
