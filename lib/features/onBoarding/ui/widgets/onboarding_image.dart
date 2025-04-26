import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class OnBoardingImage extends StatelessWidget {
  const OnBoardingImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: ShaderMask(
        shaderCallback: (Rect bounds) {
          return LinearGradient(
            colors: [Colors.black, Colors.black.withValues(alpha: 0)],
            stops: [0, 1],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ).createShader(bounds);
        },
        blendMode: BlendMode.srcATop,
        child: CachedNetworkImage(
          imageUrl:
              'https://images.pexels.com/photos/355321/pexels-photo-355321.jpeg',
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
    );
  }
}
